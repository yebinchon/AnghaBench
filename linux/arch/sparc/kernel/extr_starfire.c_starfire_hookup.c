
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct starfire_irqinfo {unsigned long hwmid; unsigned long* imap_slots; unsigned long* tregs; int upaid; struct starfire_irqinfo* next; } ;


 int GFP_KERNEL ;
 struct starfire_irqinfo* kmalloc (int,int ) ;
 int prom_halt () ;
 int prom_printf (char*) ;
 struct starfire_irqinfo* sflist ;
 scalar_t__ upa_readl (unsigned long) ;

void starfire_hookup(int upaid)
{
 struct starfire_irqinfo *p;
 unsigned long treg_base, hwmid, i;

 p = kmalloc(sizeof(*p), GFP_KERNEL);
 if (!p) {
  prom_printf("starfire_hookup: No memory, this is insane.\n");
  prom_halt();
 }
 treg_base = 0x100fc000000UL;
 hwmid = ((upaid & 0x3c) << 1) |
  ((upaid & 0x40) >> 4) |
  (upaid & 0x3);
 p->hwmid = hwmid;
 treg_base += (hwmid << 33UL);
 treg_base += 0x200UL;
 for (i = 0; i < 32; i++) {
  p->imap_slots[i] = 0UL;
  p->tregs[i] = treg_base + (i * 0x10UL);

  if (upa_readl(p->tregs[i]) != 0)
   p->imap_slots[i] = 0xdeadbeaf;
 }
 p->upaid = upaid;
 p->next = sflist;
 sflist = p;
}
