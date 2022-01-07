
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct seq_file {int dummy; } ;
struct TYPE_3__ {int * i_lcoefs; } ;
struct ioc {scalar_t__ user_cost_model; TYPE_1__ params; } ;
struct blkg_policy_data {int blkg; } ;
struct TYPE_4__ {struct ioc* ioc; } ;


 size_t I_LCOEF_RBPS ;
 size_t I_LCOEF_RRANDIOPS ;
 size_t I_LCOEF_RSEQIOPS ;
 size_t I_LCOEF_WBPS ;
 size_t I_LCOEF_WRANDIOPS ;
 size_t I_LCOEF_WSEQIOPS ;
 char* blkg_dev_name (int ) ;
 TYPE_2__* pd_to_iocg (struct blkg_policy_data*) ;
 int seq_printf (struct seq_file*,char*,char const*,char*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static u64 ioc_cost_model_prfill(struct seq_file *sf,
     struct blkg_policy_data *pd, int off)
{
 const char *dname = blkg_dev_name(pd->blkg);
 struct ioc *ioc = pd_to_iocg(pd)->ioc;
 u64 *u = ioc->params.i_lcoefs;

 if (!dname)
  return 0;

 seq_printf(sf, "%s ctrl=%s model=linear "
     "rbps=%llu rseqiops=%llu rrandiops=%llu "
     "wbps=%llu wseqiops=%llu wrandiops=%llu\n",
     dname, ioc->user_cost_model ? "user" : "auto",
     u[I_LCOEF_RBPS], u[I_LCOEF_RSEQIOPS], u[I_LCOEF_RRANDIOPS],
     u[I_LCOEF_WBPS], u[I_LCOEF_WSEQIOPS], u[I_LCOEF_WRANDIOPS]);
 return 0;
}
