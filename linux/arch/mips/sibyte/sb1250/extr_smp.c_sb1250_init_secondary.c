
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void sb1250_init_secondary(void)
{
 extern void sb1250_smp_init(void);

 sb1250_smp_init();
}
