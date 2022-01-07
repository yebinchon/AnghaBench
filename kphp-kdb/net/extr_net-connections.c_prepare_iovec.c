
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {int iov_len; int iov_base; } ;
typedef int netbuffer_t ;
typedef int nb_iterator_t ;


 int assert (int) ;
 int nbit_advance (int *,int) ;
 int nbit_get_ptr (int *) ;
 int nbit_ready_bytes (int *) ;
 int nbit_set (int *,int *) ;

int prepare_iovec (struct iovec *iov, int *iovcnt, int maxcnt, netbuffer_t *H) {
  int t = 0, i;
  nb_iterator_t Iter;
  nbit_set (&Iter, H);

  for (i = 0; i < maxcnt; i++) {
    int s = nbit_ready_bytes (&Iter);
    if (s <= 0) {
      break;
    }
    iov[i].iov_len = s;
    iov[i].iov_base = nbit_get_ptr (&Iter);
    assert (nbit_advance (&Iter, s) == s);
    t += s;
  }

  *iovcnt = i;

  return t;
}
