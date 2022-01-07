
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __f ;
 int assert (int) ;
 int write (int ,int*,int) ;

void wint (int a) {

  assert (write (__f, &a, 4) == 4);
}
