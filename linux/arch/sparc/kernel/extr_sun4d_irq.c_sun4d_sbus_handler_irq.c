
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_bucket {int irq; struct irq_bucket* next; } ;


 int SBI2DEVID (unsigned int) ;
 unsigned int acquire_sbi (int ,int) ;
 int bw_clear_intr_mask (int,unsigned int) ;
 int bw_get_intr_mask (int) ;
 int generic_handle_irq (int ) ;
 struct irq_bucket** irq_map ;
 int release_sbi (int ,unsigned int) ;
 unsigned int sun4d_encode_irq (unsigned int,int,unsigned int) ;

__attribute__((used)) static void sun4d_sbus_handler_irq(int sbusl)
{
 unsigned int bus_mask;
 unsigned int sbino, slot;
 unsigned int sbil;

 bus_mask = bw_get_intr_mask(sbusl) & 0x3ffff;
 bw_clear_intr_mask(sbusl, bus_mask);

 sbil = (sbusl << 2);

 for (sbino = 0; bus_mask; sbino++, bus_mask >>= 1) {
  unsigned int idx, mask;

  if (!(bus_mask & 1))
   continue;





  mask = acquire_sbi(SBI2DEVID(sbino), 0xf << sbil);
  mask &= (0xf << sbil);


  slot = (1 << sbil);
  for (idx = 0; mask != 0; idx++, slot <<= 1) {
   unsigned int pil;
   struct irq_bucket *p;

   if (!(mask & slot))
    continue;

   mask &= ~slot;
   pil = sun4d_encode_irq(sbino, sbusl, idx);

   p = irq_map[pil];
   while (p) {
    struct irq_bucket *next;

    next = p->next;
    generic_handle_irq(p->irq);
    p = next;
   }
   release_sbi(SBI2DEVID(sbino), slot);
  }
 }
}
