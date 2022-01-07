
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int legacy_pic_irq_pending_noop(unsigned int irq)
{
 return 0;
}
