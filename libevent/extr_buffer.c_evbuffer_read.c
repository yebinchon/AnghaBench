
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_iovec {int dummy; } ;
struct evbuffer_chain {unsigned char* buffer; int misalign; int off; struct evbuffer_chain* next; } ;
struct evbuffer {int total_len; int n_add_for_cb; struct evbuffer_chain** last_with_datap; scalar_t__ max_read; scalar_t__ freeze_end; } ;
typedef int evutil_socket_t ;
typedef int ev_ssize_t ;
typedef struct evbuffer_iovec IOV_TYPE ;
typedef int DWORD ;


 int CHAIN_SPACE_LEN (struct evbuffer_chain*) ;
 size_t EVBUFFER_CHAIN_MAX ;
 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 int NUM_READ_IOVEC ;
 int WSABUF_FROM_EVBUFFER_IOV (struct evbuffer_iovec*,struct evbuffer_iovec*) ;
 scalar_t__ WSAECONNABORTED ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ WSARecv (int ,struct evbuffer_iovec*,int,int*,int*,int *,int *) ;
 int advance_last_with_data (struct evbuffer*) ;
 int evbuffer_expand_fast_ (struct evbuffer*,int,int) ;
 struct evbuffer_chain* evbuffer_expand_singlechain (struct evbuffer*,int) ;
 int evbuffer_invoke_callbacks_ (struct evbuffer*) ;
 int evbuffer_read_setup_vecs_ (struct evbuffer*,int,struct evbuffer_iovec*,int,struct evbuffer_chain***,int) ;
 int get_n_bytes_readable_on_socket (int ) ;
 int read (int ,unsigned char*,int) ;
 int readv (int ,struct evbuffer_iovec*,int) ;
 int recv (int ,unsigned char*,int,int ) ;

int
evbuffer_read(struct evbuffer *buf, evutil_socket_t fd, int howmuch)
{
 struct evbuffer_chain **chainp;
 int n;
 int result;




 struct evbuffer_chain *chain;
 unsigned char *p;


 EVBUFFER_LOCK(buf);

 if (buf->freeze_end) {
  result = -1;
  goto done;
 }

 n = get_n_bytes_readable_on_socket(fd);
 if (n <= 0 || n > (int)buf->max_read)
  n = (int)buf->max_read;
 if (howmuch < 0 || howmuch > n)
  howmuch = n;
 if ((chain = evbuffer_expand_singlechain(buf, howmuch)) == ((void*)0)) {
  result = -1;
  goto done;
 }


 p = chain->buffer + chain->misalign + chain->off;


 n = read(fd, p, howmuch);





 if (n == -1) {
  result = -1;
  goto done;
 }
 if (n == 0) {
  result = 0;
  goto done;
 }
 chain->off += n;
 advance_last_with_data(buf);

 buf->total_len += n;
 buf->n_add_for_cb += n;


 evbuffer_invoke_callbacks_(buf);
 result = n;
done:
 EVBUFFER_UNLOCK(buf);
 return result;
}
