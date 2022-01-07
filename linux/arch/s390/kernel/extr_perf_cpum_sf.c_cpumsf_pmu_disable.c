
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct hws_qsi_info_block {int dear; int tear; scalar_t__ es; } ;
struct hws_lsctl_request_block {int dear; int tear; scalar_t__ cd; scalar_t__ cs; } ;
struct cpu_hw_sf {int flags; struct hws_lsctl_request_block lsctl; } ;


 int PMU_F_ENABLED ;
 int PMU_F_ERR_MASK ;
 int cpu_hw_sf ;
 int debug_sprintf_event (int ,int,char*,int) ;
 int lsctl (struct hws_lsctl_request_block*) ;
 int pr_err (char*,int,int) ;
 int qsi (struct hws_qsi_info_block*) ;
 int sfdbg ;
 struct cpu_hw_sf* this_cpu_ptr (int *) ;

__attribute__((used)) static void cpumsf_pmu_disable(struct pmu *pmu)
{
 struct cpu_hw_sf *cpuhw = this_cpu_ptr(&cpu_hw_sf);
 struct hws_lsctl_request_block inactive;
 struct hws_qsi_info_block si;
 int err;

 if (!(cpuhw->flags & PMU_F_ENABLED))
  return;

 if (cpuhw->flags & PMU_F_ERR_MASK)
  return;


 inactive = cpuhw->lsctl;
 inactive.cs = 0;
 inactive.cd = 0;

 err = lsctl(&inactive);
 if (err) {
  pr_err("Loading sampling controls failed: op=%i err=%i\n",
   2, err);
  return;
 }


 if (!qsi(&si)) {





  if (si.es) {
   cpuhw->lsctl.tear = si.tear;
   cpuhw->lsctl.dear = si.dear;
  }
 } else
  debug_sprintf_event(sfdbg, 3, "cpumsf_pmu_disable: "
        "qsi() failed with err=%i\n", err);

 cpuhw->flags &= ~PMU_F_ENABLED;
}
