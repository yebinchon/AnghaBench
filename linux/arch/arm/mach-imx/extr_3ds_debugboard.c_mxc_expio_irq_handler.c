
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {TYPE_1__* chip; } ;
struct irq_desc {TYPE_2__ irq_data; } ;
struct TYPE_5__ {int (* irq_unmask ) (TYPE_2__*) ;int (* irq_ack ) (TYPE_2__*) ;int (* irq_mask ) (TYPE_2__*) ;} ;


 scalar_t__ INTR_MASK_REG ;
 scalar_t__ INTR_STATUS_REG ;
 scalar_t__ brd_io ;
 int domain ;
 int generic_handle_irq (int ) ;
 int imx_readw (scalar_t__) ;
 int irq_find_mapping (int ,int) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*) ;

__attribute__((used)) static void mxc_expio_irq_handler(struct irq_desc *desc)
{
 u32 imr_val;
 u32 int_valid;
 u32 expio_irq;


 desc->irq_data.chip->irq_mask(&desc->irq_data);

 imr_val = imx_readw(brd_io + INTR_MASK_REG);
 int_valid = imx_readw(brd_io + INTR_STATUS_REG) & ~imr_val;

 expio_irq = 0;
 for (; int_valid != 0; int_valid >>= 1, expio_irq++) {
  if ((int_valid & 1) == 0)
   continue;
  generic_handle_irq(irq_find_mapping(domain, expio_irq));
 }

 desc->irq_data.chip->irq_ack(&desc->irq_data);
 desc->irq_data.chip->irq_unmask(&desc->irq_data);
}
