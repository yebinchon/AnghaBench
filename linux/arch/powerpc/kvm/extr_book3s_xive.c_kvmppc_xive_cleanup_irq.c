
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xive_irq_data {int dummy; } ;


 int MASKED ;
 int XIVE_ESB_SET_PQ_01 ;
 int xive_native_configure_irq (int ,int ,int ,int ) ;
 int xive_vm_esb_load (struct xive_irq_data*,int ) ;

__attribute__((used)) static void kvmppc_xive_cleanup_irq(u32 hw_num, struct xive_irq_data *xd)
{
 xive_vm_esb_load(xd, XIVE_ESB_SET_PQ_01);
 xive_native_configure_irq(hw_num, 0, MASKED, 0);
}
