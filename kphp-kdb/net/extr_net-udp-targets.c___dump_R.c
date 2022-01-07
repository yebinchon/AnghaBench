
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* R ;
 int Rpos ;
 int assert (int) ;

void __dump_R (int x) {
  assert (Rpos < 10000);
  R[Rpos ++] = x;
}
