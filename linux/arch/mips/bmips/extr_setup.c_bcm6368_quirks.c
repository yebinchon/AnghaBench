
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcm63xx_fixup_cpu1 () ;

__attribute__((used)) static void bcm6368_quirks(void)
{
 bcm63xx_fixup_cpu1();
}
