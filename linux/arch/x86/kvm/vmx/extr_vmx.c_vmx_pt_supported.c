
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PT_MODE_HOST_GUEST ;
 scalar_t__ pt_mode ;

__attribute__((used)) static bool vmx_pt_supported(void)
{
 return pt_mode == PT_MODE_HOST_GUEST;
}
