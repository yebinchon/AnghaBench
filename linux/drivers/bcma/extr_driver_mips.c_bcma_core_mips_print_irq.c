
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct bcma_device {TYPE_1__ id; int bus; } ;


 int ARRAY_SIZE (char const**) ;
 int bcma_debug (int ,char*,int ,char*) ;
 int sprintf (char*,char*,char const*,char) ;

__attribute__((used)) static void bcma_core_mips_print_irq(struct bcma_device *dev, unsigned int irq)
{
 int i;
 static const char *irq_name[] = {"2(S)", "3", "4", "5", "6", "D", "I"};
 char interrupts[25];
 char *ints = interrupts;

 for (i = 0; i < ARRAY_SIZE(irq_name); i++)
  ints += sprintf(ints, " %s%c",
    irq_name[i], i == irq ? '*' : ' ');

 bcma_debug(dev->bus, "core 0x%04x, irq:%s\n", dev->id.id, interrupts);
}
