
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 size_t rbytes ;
 size_t rptr ;
 size_t wptr ;

void readadv (size_t len) {
  assert (len >= 0 && len <= wptr - rptr);
  rptr += len;
  rbytes += len;
}
