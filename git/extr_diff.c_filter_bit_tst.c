
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_options {int filter; } ;


 int* filter_bit ;

__attribute__((used)) static unsigned filter_bit_tst(char status, const struct diff_options *opt)
{
 return opt->filter & filter_bit[(int) status];
}
