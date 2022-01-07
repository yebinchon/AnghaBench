
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int FPGA_PIC_IRQMASK (int) ;
 int SOCRATES_FPGA_IRQ_MASK ;
 int SOCRATES_FPGA_NUM_IRQS ;
 int * irq_domain_add_linear (struct device_node*,int ,int *,int *) ;
 int irq_of_parse_and_map (struct device_node*,int) ;
 int irq_set_chained_handler (int ,int ) ;
 int of_iomap (struct device_node*,int ) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int pr_warn (char*,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int * socrates_fpga_irqs ;
 int socrates_fpga_pic_cascade ;
 int socrates_fpga_pic_host_ops ;
 int socrates_fpga_pic_iobase ;
 int * socrates_fpga_pic_irq_host ;
 int socrates_fpga_pic_lock ;
 int socrates_fpga_pic_write (int ,int) ;

void socrates_fpga_pic_init(struct device_node *pic)
{
 unsigned long flags;
 int i;


 socrates_fpga_pic_irq_host = irq_domain_add_linear(pic,
      SOCRATES_FPGA_NUM_IRQS, &socrates_fpga_pic_host_ops, ((void*)0));
 if (socrates_fpga_pic_irq_host == ((void*)0)) {
  pr_err("FPGA PIC: Unable to allocate host\n");
  return;
 }

 for (i = 0; i < 3; i++) {
  socrates_fpga_irqs[i] = irq_of_parse_and_map(pic, i);
  if (!socrates_fpga_irqs[i]) {
   pr_warn("FPGA PIC: can't get irq%d\n", i);
   continue;
  }
  irq_set_chained_handler(socrates_fpga_irqs[i],
     socrates_fpga_pic_cascade);
 }

 socrates_fpga_pic_iobase = of_iomap(pic, 0);

 raw_spin_lock_irqsave(&socrates_fpga_pic_lock, flags);
 socrates_fpga_pic_write(FPGA_PIC_IRQMASK(0),
   SOCRATES_FPGA_IRQ_MASK << 16);
 socrates_fpga_pic_write(FPGA_PIC_IRQMASK(1),
   SOCRATES_FPGA_IRQ_MASK << 16);
 socrates_fpga_pic_write(FPGA_PIC_IRQMASK(2),
   SOCRATES_FPGA_IRQ_MASK << 16);
 raw_spin_unlock_irqrestore(&socrates_fpga_pic_lock, flags);

 pr_info("FPGA PIC: Setting up Socrates FPGA PIC\n");
}
