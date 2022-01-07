
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int inb (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int outb (int,int) ;
 int pmbase ;
 int pr_debug (char*,int,...) ;
 int pr_err (char*) ;
 int speedstep_get_frequency (int ) ;
 int speedstep_processor ;

__attribute__((used)) static void speedstep_set_state(unsigned int state)
{
 u8 pm2_blk;
 u8 value;
 unsigned long flags;

 if (state > 0x1)
  return;


 local_irq_save(flags);


 value = inb(pmbase + 0x50);

 pr_debug("read at pmbase 0x%x + 0x50 returned 0x%x\n", pmbase, value);


 value &= 0xFE;
 value |= state;

 pr_debug("writing 0x%x to pmbase 0x%x + 0x50\n", value, pmbase);


 pm2_blk = inb(pmbase + 0x20);
 pm2_blk |= 0x01;
 outb(pm2_blk, (pmbase + 0x20));


 outb(value, (pmbase + 0x50));


 pm2_blk &= 0xfe;
 outb(pm2_blk, (pmbase + 0x20));


 value = inb(pmbase + 0x50);


 local_irq_restore(flags);

 pr_debug("read at pmbase 0x%x + 0x50 returned 0x%x\n", pmbase, value);

 if (state == (value & 0x1))
  pr_debug("change to %u MHz succeeded\n",
   speedstep_get_frequency(speedstep_processor) / 1000);
 else
  pr_err("change failed - I/O error\n");

 return;
}
