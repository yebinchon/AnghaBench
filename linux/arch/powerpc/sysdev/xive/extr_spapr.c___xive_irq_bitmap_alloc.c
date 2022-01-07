
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xive_irq_bitmap {int count; scalar_t__ base; int bitmap; } ;


 int ENOMEM ;
 int find_first_zero_bit (int ,int) ;
 int set_bit (int,int ) ;

__attribute__((used)) static int __xive_irq_bitmap_alloc(struct xive_irq_bitmap *xibm)
{
 int irq;

 irq = find_first_zero_bit(xibm->bitmap, xibm->count);
 if (irq != xibm->count) {
  set_bit(irq, xibm->bitmap);
  irq += xibm->base;
 } else {
  irq = -ENOMEM;
 }

 return irq;
}
