
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hv_reenlightenment_control {scalar_t__ enabled; } ;


 int HV_X64_MSR_REENLIGHTENMENT_CONTROL ;
 int hv_reenlightenment_available () ;
 int * hv_reenlightenment_cb ;
 int rdmsrl (int ,int ) ;
 int wrmsrl (int ,int ) ;

void clear_hv_tscchange_cb(void)
{
 struct hv_reenlightenment_control re_ctrl;

 if (!hv_reenlightenment_available())
  return;

 rdmsrl(HV_X64_MSR_REENLIGHTENMENT_CONTROL, *(u64 *)&re_ctrl);
 re_ctrl.enabled = 0;
 wrmsrl(HV_X64_MSR_REENLIGHTENMENT_CONTROL, *(u64 *)&re_ctrl);

 hv_reenlightenment_cb = ((void*)0);
}
