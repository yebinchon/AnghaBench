
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mce {int status; } ;
typedef enum context { ____Placeholder_context } context ;
struct TYPE_2__ {scalar_t__ smca; scalar_t__ overflow_recov; } ;


 int IN_KERNEL ;
 int MCE_AR_SEVERITY ;
 int MCE_DEFERRED_SEVERITY ;
 int MCE_KEEP_SEVERITY ;
 int MCE_PANIC_SEVERITY ;
 int MCE_UC_SEVERITY ;
 int MCI_STATUS_DEFERRED ;
 int MCI_STATUS_OVER ;
 int MCI_STATUS_PCC ;
 int MCI_STATUS_UC ;
 int error_context (struct mce*) ;
 TYPE_1__ mce_flags ;
 int mce_severity_amd_smca (struct mce*,int) ;

__attribute__((used)) static int mce_severity_amd(struct mce *m, int tolerant, char **msg, bool is_excp)
{
 enum context ctx = error_context(m);


 if (m->status & MCI_STATUS_PCC)
  return MCE_PANIC_SEVERITY;

 if (m->status & MCI_STATUS_UC) {

  if (ctx == IN_KERNEL)
   return MCE_PANIC_SEVERITY;







  if (mce_flags.overflow_recov) {
   if (mce_flags.smca)
    return mce_severity_amd_smca(m, ctx);


   return MCE_AR_SEVERITY;
  } else {

   if (m->status & MCI_STATUS_OVER)
    return MCE_PANIC_SEVERITY;
  }





  return MCE_UC_SEVERITY;
 }





 if (m->status & MCI_STATUS_DEFERRED)
  return MCE_DEFERRED_SEVERITY;





 return MCE_KEEP_SEVERITY;
}
