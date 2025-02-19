
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {int total_bytes; } ;
struct iovec {scalar_t__ iov_len; } ;


 int assert (int) ;
 int rwm_prepare_iovec (struct raw_message*,struct iovec*,int,int) ;

int tcp_prepare_iovec (struct iovec *iov, int *iovcnt, int maxcnt, struct raw_message *raw) {
  int t = rwm_prepare_iovec (raw, iov, maxcnt, raw->total_bytes);
  if (t < 0) {
    *iovcnt = maxcnt;
    int i;
    t = 0;
    for (i = 0; i < maxcnt; i++) {
      t += iov[i].iov_len;
    }
    assert (t < raw->total_bytes);
    return t;
  } else {
    *iovcnt = t;
    return raw->total_bytes;
  }
}
