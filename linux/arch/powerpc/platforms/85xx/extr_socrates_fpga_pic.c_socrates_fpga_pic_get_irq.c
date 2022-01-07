
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int irq_hw_number_t ;


 int FPGA_PIC_IRQMASK (int) ;
 int SOCRATES_FPGA_NUM_IRQS ;
 unsigned int irq_linear_revmap (int ,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int* socrates_fpga_irqs ;
 int socrates_fpga_pic_irq_host ;
 int socrates_fpga_pic_lock ;
 int socrates_fpga_pic_read (int ) ;

__attribute__((used)) static inline unsigned int socrates_fpga_pic_get_irq(unsigned int irq)
{
 uint32_t cause;
 unsigned long flags;
 int i;


 for (i = 0; i < 3; i++) {
  if (irq == socrates_fpga_irqs[i])
   break;
 }
 if (i == 3)
  return 0;

 raw_spin_lock_irqsave(&socrates_fpga_pic_lock, flags);
 cause = socrates_fpga_pic_read(FPGA_PIC_IRQMASK(i));
 raw_spin_unlock_irqrestore(&socrates_fpga_pic_lock, flags);
 for (i = SOCRATES_FPGA_NUM_IRQS - 1; i >= 0; i--) {
  if (cause >> (i + 16))
   break;
 }
 return irq_linear_revmap(socrates_fpga_pic_irq_host,
   (irq_hw_number_t)i);
}
