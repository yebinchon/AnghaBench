
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void bcm1480_init_secondary(void)
{
 extern void bcm1480_smp_init(void);

 bcm1480_smp_init();
}
