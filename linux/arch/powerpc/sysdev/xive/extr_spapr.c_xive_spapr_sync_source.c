
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int plpar_int_sync (int ,int ) ;

__attribute__((used)) static void xive_spapr_sync_source(u32 hw_irq)
{

 plpar_int_sync(0, hw_irq);
}
