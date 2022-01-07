
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coproc_reg {int dummy; } ;


 int reg_to_match_value (struct coproc_reg const*) ;

__attribute__((used)) static int match_reg(const void *key, const void *elt)
{
 const unsigned long pval = (unsigned long)key;
 const struct coproc_reg *r = elt;

 return pval - reg_to_match_value(r);
}
