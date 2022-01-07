
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vpid; } ;


 int VMX_VPID_EXTENT_INDIVIDUAL_ADDR_BIT ;
 TYPE_1__ vmx_capability ;

__attribute__((used)) static inline bool cpu_has_vmx_invvpid_individual_addr(void)
{
 return vmx_capability.vpid & VMX_VPID_EXTENT_INDIVIDUAL_ADDR_BIT;
}
