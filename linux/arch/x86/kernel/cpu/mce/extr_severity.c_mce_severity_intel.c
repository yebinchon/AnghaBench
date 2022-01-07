
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct severity {int mask; int result; int mcgmask; int mcgres; scalar_t__ ser; int context; int excp; char* msg; int covered; scalar_t__ sev; } ;
struct mce {int status; int mcgstatus; } ;
typedef enum exception { ____Placeholder_exception } exception ;
typedef enum context { ____Placeholder_context } context ;
struct TYPE_2__ {scalar_t__ ser; } ;


 int EXCP_CONTEXT ;
 int IN_KERNEL ;
 int MCE_PANIC_SEVERITY ;
 scalar_t__ MCE_UC_SEVERITY ;
 int NO_EXCP ;
 scalar_t__ NO_SER ;
 scalar_t__ SER_REQUIRED ;
 int error_context (struct mce*) ;
 TYPE_1__ mca_cfg ;
 struct severity* severities ;

__attribute__((used)) static int mce_severity_intel(struct mce *m, int tolerant, char **msg, bool is_excp)
{
 enum exception excp = (is_excp ? EXCP_CONTEXT : NO_EXCP);
 enum context ctx = error_context(m);
 struct severity *s;

 for (s = severities;; s++) {
  if ((m->status & s->mask) != s->result)
   continue;
  if ((m->mcgstatus & s->mcgmask) != s->mcgres)
   continue;
  if (s->ser == SER_REQUIRED && !mca_cfg.ser)
   continue;
  if (s->ser == NO_SER && mca_cfg.ser)
   continue;
  if (s->context && ctx != s->context)
   continue;
  if (s->excp && excp != s->excp)
   continue;
  if (msg)
   *msg = s->msg;
  s->covered = 1;
  if (s->sev >= MCE_UC_SEVERITY && ctx == IN_KERNEL) {
   if (tolerant < 1)
    return MCE_PANIC_SEVERITY;
  }
  return s->sev;
 }
}
