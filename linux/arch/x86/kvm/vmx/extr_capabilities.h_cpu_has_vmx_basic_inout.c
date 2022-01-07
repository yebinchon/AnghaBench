
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ basic_cap; } ;


 int VMX_BASIC_INOUT ;
 TYPE_1__ vmcs_config ;

__attribute__((used)) static inline bool cpu_has_vmx_basic_inout(void)
{
 return (((u64)vmcs_config.basic_cap << 32) & VMX_BASIC_INOUT);
}
