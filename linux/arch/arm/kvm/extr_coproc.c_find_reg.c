
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int table ;
struct coproc_reg {int dummy; } ;
struct coproc_params {int dummy; } ;


 struct coproc_reg const* bsearch (void*,struct coproc_reg const*,unsigned int,int,int ) ;
 int match_reg ;
 unsigned long reg_to_match_value (struct coproc_params const*) ;

__attribute__((used)) static const struct coproc_reg *find_reg(const struct coproc_params *params,
      const struct coproc_reg table[],
      unsigned int num)
{
 unsigned long pval = reg_to_match_value(params);

 return bsearch((void *)pval, table, num, sizeof(table[0]), match_reg);
}
