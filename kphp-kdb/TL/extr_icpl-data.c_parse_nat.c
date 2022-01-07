
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int icpl_nat_t ;


 int assert (int ) ;
 int isdigit (char const) ;

__attribute__((used)) static icpl_nat_t parse_nat (const char *input, int l) {
  icpl_nat_t u = 0;
  int i;
  for (i = 0; i < l; i++) {
    assert (isdigit (input[i]));
    u = u * 10 + (input[i] - 48);
  }
  return u;
}
