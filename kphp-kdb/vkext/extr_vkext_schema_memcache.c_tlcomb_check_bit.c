
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;


 int TLUNI_NEXT ;
 int fprintf (int ,char*,long,long,long,...) ;
 int stderr ;
 long var_nat_const_to_int (struct tl_tree*) ;

void *tlcomb_check_bit (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  long n = (long)*(IP ++);
  long b = (long)*(IP ++);
  long o = (long)*(IP ++);



  long x = var_nat_const_to_int (vars[n]);



  if (!(x & (1 << b))) {
    IP += o;
  }
  TLUNI_NEXT;
}
