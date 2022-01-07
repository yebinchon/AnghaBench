
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmcs12 {scalar_t__ guest_activity_state; } ;


 scalar_t__ CC (int) ;
 int EINVAL ;
 scalar_t__ GUEST_ACTIVITY_ACTIVE ;
 scalar_t__ GUEST_ACTIVITY_HLT ;

__attribute__((used)) static int nested_check_guest_non_reg_state(struct vmcs12 *vmcs12)
{
 if (CC(vmcs12->guest_activity_state != GUEST_ACTIVITY_ACTIVE &&
        vmcs12->guest_activity_state != GUEST_ACTIVITY_HLT))
  return -EINVAL;

 return 0;
}
