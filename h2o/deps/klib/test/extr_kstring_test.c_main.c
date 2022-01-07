
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * s; scalar_t__ m; scalar_t__ l; } ;
typedef TYPE_1__ kstring_t ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int INT_MAX ;
 int INT_MIN ;
 int LONG_MAX ;
 int LONG_MIN ;
 int fprintf (int ,char*,scalar_t__) ;
 int free (int *) ;
 scalar_t__ nfail ;
 int stderr ;
 int test_kputl (TYPE_1__*,int) ;
 int test_kputw (TYPE_1__*,int) ;

int main()
{
 kstring_t ks;

 ks.l = ks.m = 0;
 ks.s = ((void*)0);

 test_kputw(&ks, 0);
 test_kputw(&ks, 1);
 test_kputw(&ks, 37);
 test_kputw(&ks, 12345);
 test_kputw(&ks, -12345);
 test_kputw(&ks, INT_MAX);
 test_kputw(&ks, -INT_MAX);
 test_kputw(&ks, INT_MIN);

 test_kputl(&ks, 0);
 test_kputl(&ks, 1);
 test_kputl(&ks, 37);
 test_kputl(&ks, 12345);
 test_kputl(&ks, -12345);
 test_kputl(&ks, INT_MAX);
 test_kputl(&ks, -INT_MAX);
 test_kputl(&ks, INT_MIN);
 test_kputl(&ks, LONG_MAX);
 test_kputl(&ks, -LONG_MAX);
 test_kputl(&ks, LONG_MIN);

 free(ks.s);

 if (nfail > 0) {
  fprintf(stderr, "Total failures: %d\n", nfail);
  return EXIT_FAILURE;
 }

 return EXIT_SUCCESS;
}
