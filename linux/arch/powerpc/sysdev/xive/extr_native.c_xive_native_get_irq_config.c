
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ s64 ;
typedef int __be64 ;
typedef int __be32 ;


 int ENXIO ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 scalar_t__ opal_xive_get_irq_config (int ,int *,int *,int *) ;

__attribute__((used)) static int xive_native_get_irq_config(u32 hw_irq, u32 *target, u8 *prio,
          u32 *sw_irq)
{
 s64 rc;
 __be64 vp;
 __be32 lirq;

 rc = opal_xive_get_irq_config(hw_irq, &vp, prio, &lirq);

 *target = be64_to_cpu(vp);
 *sw_irq = be32_to_cpu(lirq);

 return rc == 0 ? 0 : -ENXIO;
}
