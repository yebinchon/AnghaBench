
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef void tl_tree ;



void *tlsub_ret (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  struct tl_tree *x = *(--Data);

  return x;
}
