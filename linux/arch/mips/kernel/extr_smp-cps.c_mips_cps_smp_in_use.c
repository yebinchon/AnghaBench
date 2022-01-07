
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plat_smp_ops {int dummy; } ;


 struct plat_smp_ops const cps_smp_ops ;

bool mips_cps_smp_in_use(void)
{
 extern const struct plat_smp_ops *mp_ops;
 return mp_ops == &cps_smp_ops;
}
