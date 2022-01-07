
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct throtl_grp {int dummy; } ;
struct seq_file {int dummy; } ;
struct blkg_policy_data {int dummy; } ;


 unsigned int UINT_MAX ;
 int __blkg_prfill_u64 (struct seq_file*,struct blkg_policy_data*,unsigned int) ;
 struct throtl_grp* pd_to_tg (struct blkg_policy_data*) ;

__attribute__((used)) static u64 tg_prfill_conf_uint(struct seq_file *sf, struct blkg_policy_data *pd,
          int off)
{
 struct throtl_grp *tg = pd_to_tg(pd);
 unsigned int v = *(unsigned int *)((void *)tg + off);

 if (v == UINT_MAX)
  return 0;
 return __blkg_prfill_u64(sf, pd, v);
}
