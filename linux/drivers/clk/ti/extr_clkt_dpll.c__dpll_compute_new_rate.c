
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_div (unsigned long long,unsigned int) ;

__attribute__((used)) static unsigned long _dpll_compute_new_rate(unsigned long parent_rate,
         unsigned int m, unsigned int n)
{
 unsigned long long num;

 num = (unsigned long long)parent_rate * m;
 do_div(num, n);
 return num;
}
