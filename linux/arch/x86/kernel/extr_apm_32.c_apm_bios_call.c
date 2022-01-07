
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apm_bios_call {int dummy; } ;


 int __apm_bios_call ;
 int on_cpu0 (int ,struct apm_bios_call*) ;

__attribute__((used)) static int apm_bios_call(struct apm_bios_call *call)
{
 return on_cpu0(__apm_bios_call, call);
}
