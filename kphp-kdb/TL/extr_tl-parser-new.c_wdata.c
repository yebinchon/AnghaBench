
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __f ;
 int assert (int) ;
 int write (int ,void const*,int) ;

void wdata (const void *x, int len) {
  assert (write (__f, x, len) == len);
}
