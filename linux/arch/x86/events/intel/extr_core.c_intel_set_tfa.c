
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct cpu_hw_events {scalar_t__ tfa_shadow; } ;


 scalar_t__ MSR_TFA_RTM_FORCE_ABORT ;
 int MSR_TSX_FORCE_ABORT ;
 int wrmsrl (int ,scalar_t__) ;

__attribute__((used)) static void intel_set_tfa(struct cpu_hw_events *cpuc, bool on)
{
 u64 val = on ? MSR_TFA_RTM_FORCE_ABORT : 0;

 if (cpuc->tfa_shadow != val) {
  cpuc->tfa_shadow = val;
  wrmsrl(MSR_TSX_FORCE_ABORT, val);
 }
}
