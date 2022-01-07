
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct seq_file {int dummy; } ;
struct ioc_gq {scalar_t__ cfg_weight; } ;
struct blkg_policy_data {int blkg; } ;


 char* blkg_dev_name (int ) ;
 struct ioc_gq* pd_to_iocg (struct blkg_policy_data*) ;
 int seq_printf (struct seq_file*,char*,char const*,scalar_t__) ;

__attribute__((used)) static u64 ioc_weight_prfill(struct seq_file *sf, struct blkg_policy_data *pd,
        int off)
{
 const char *dname = blkg_dev_name(pd->blkg);
 struct ioc_gq *iocg = pd_to_iocg(pd);

 if (dname && iocg->cfg_weight)
  seq_printf(sf, "%s %u\n", dname, iocg->cfg_weight);
 return 0;
}
