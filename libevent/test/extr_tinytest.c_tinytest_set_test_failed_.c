
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAIL ;
 int * cur_test_name ;
 int cur_test_outcome ;
 char* cur_test_prefix ;
 scalar_t__ opt_verbosity ;
 int printf (char*,char*,int *) ;
 int puts (char*) ;

void
tinytest_set_test_failed_(void)
{
 if (opt_verbosity <= 0 && cur_test_name) {
  if (opt_verbosity==0) puts("");
  printf("%s%s: ", cur_test_prefix, cur_test_name);
  cur_test_name = ((void*)0);
 }
 cur_test_outcome = FAIL;
}
