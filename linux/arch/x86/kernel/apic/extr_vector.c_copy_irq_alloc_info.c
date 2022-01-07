
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_alloc_info {int dummy; } ;


 int memset (struct irq_alloc_info*,int ,int) ;

void copy_irq_alloc_info(struct irq_alloc_info *dst, struct irq_alloc_info *src)
{
 if (src)
  *dst = *src;
 else
  memset(dst, 0, sizeof(*dst));
}
