
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_options {char const* a_prefix; char const* b_prefix; } ;



void diff_set_mnemonic_prefix(struct diff_options *options, const char *a, const char *b)
{
 if (!options->a_prefix)
  options->a_prefix = a;
 if (!options->b_prefix)
  options->b_prefix = b;
}
