
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {int flags; } ;
struct evbuffer {size_t total_len; struct evbuffer_chain* first; scalar_t__ freeze_start; } ;
typedef int evutil_socket_t ;
typedef size_t ev_ssize_t ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_SENDFILE ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 int EVUTIL_ASSERT (int ) ;
 int evbuffer_drain (struct evbuffer*,int) ;
 void* evbuffer_pullup (struct evbuffer*,size_t) ;
 int evbuffer_write_iovec (struct evbuffer*,int ,size_t) ;
 int evbuffer_write_sendfile (struct evbuffer*,int ,size_t) ;
 int send (int ,void*,size_t,int ) ;
 int write (int ,void*,size_t) ;

int
evbuffer_write_atmost(struct evbuffer *buffer, evutil_socket_t fd,
    ev_ssize_t howmuch)
{
 int n = -1;

 EVBUFFER_LOCK(buffer);

 if (buffer->freeze_start) {
  goto done;
 }

 if (howmuch < 0 || (size_t)howmuch > buffer->total_len)
  howmuch = buffer->total_len;

 if (howmuch > 0) {
  void *p = evbuffer_pullup(buffer, howmuch);
  EVUTIL_ASSERT(p || !howmuch);
  n = write(fd, p, howmuch);




 }

 if (n > 0)
  evbuffer_drain(buffer, n);

done:
 EVBUFFER_UNLOCK(buffer);
 return (n);
}
