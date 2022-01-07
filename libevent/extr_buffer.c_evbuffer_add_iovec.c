
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_iovec {scalar_t__ iov_len; int iov_base; } ;
struct evbuffer {int dummy; } ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 scalar_t__ evbuffer_add (struct evbuffer*,int ,scalar_t__) ;
 scalar_t__ evbuffer_expand_fast_ (struct evbuffer*,size_t,int) ;

size_t
evbuffer_add_iovec(struct evbuffer * buf, struct evbuffer_iovec * vec, int n_vec) {
 int n;
 size_t res;
 size_t to_alloc;

 EVBUFFER_LOCK(buf);

 res = to_alloc = 0;

 for (n = 0; n < n_vec; n++) {
  to_alloc += vec[n].iov_len;
 }

 if (evbuffer_expand_fast_(buf, to_alloc, 2) < 0) {
  goto done;
 }

 for (n = 0; n < n_vec; n++) {





  if (evbuffer_add(buf, vec[n].iov_base, vec[n].iov_len) < 0) {
   goto done;
  }

  res += vec[n].iov_len;
 }

done:
    EVBUFFER_UNLOCK(buf);
    return res;
}
