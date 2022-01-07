
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOONGSON_GENCFG ;

void mach_prepare_reboot(void)
{
 LOONGSON_GENCFG &= ~(1 << 2);
 LOONGSON_GENCFG |= (1 << 2);
}
