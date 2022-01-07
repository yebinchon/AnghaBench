
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int) ;
 int __set_bit (unsigned int,int ) ;
 int default_enabled_hcalls ;
 int* default_hcall_list ;
 int kvmppc_hcall_impl_hv (unsigned int) ;

__attribute__((used)) static void init_default_hcalls(void)
{
 int i;
 unsigned int hcall;

 for (i = 0; default_hcall_list[i]; ++i) {
  hcall = default_hcall_list[i];
  WARN_ON(!kvmppc_hcall_impl_hv(hcall));
  __set_bit(hcall / 4, default_enabled_hcalls);
 }
}
