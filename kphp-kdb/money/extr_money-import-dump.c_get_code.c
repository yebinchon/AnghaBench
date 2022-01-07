
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int money_auth_code_t ;


 int* L ;
 char** S ;
 int assert (int) ;
 int strtoull (char*,char**,int) ;

money_auth_code_t get_code (int x) {
  char *ptr;
  money_auth_code_t res = strtoull (S[x], &ptr, 16);
  assert (!L[x] || (L[x] == 16 && ptr == S[x] + 16));
  return res;
}
