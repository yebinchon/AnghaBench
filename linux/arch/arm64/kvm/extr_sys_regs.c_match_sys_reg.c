
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_reg_desc {int dummy; } ;


 int reg_to_encoding (struct sys_reg_desc const*) ;

__attribute__((used)) static int match_sys_reg(const void *key, const void *elt)
{
 const unsigned long pval = (unsigned long)key;
 const struct sys_reg_desc *r = elt;

 return pval - reg_to_encoding(r);
}
