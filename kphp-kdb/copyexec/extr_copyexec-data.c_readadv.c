
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ rptr ;
 scalar_t__ wptr ;

__attribute__((used)) static void readadv (size_t len) {
  assert (len >= 0 && len <= (size_t) (wptr - rptr) );
  rptr += len;
}
