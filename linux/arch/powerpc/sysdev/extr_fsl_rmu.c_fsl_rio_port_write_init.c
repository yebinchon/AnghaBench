
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ phys; int virt; scalar_t__ discard_count; scalar_t__ err_count; } ;
struct fsl_rio_pw {TYPE_2__ port_write_msg; int dev; TYPE_1__* pw_regs; int pw_fifo; int pw_fifo_lock; int pw_work; } ;
struct TYPE_3__ {int pwmr; int epwqbar; int pwqbar; int pwsr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int IRQF_SHARED ;
 int IRQ_RIO_PW (struct fsl_rio_pw*) ;
 int LTLEECSR_ENABLE_ALL ;
 int RIO_IPWMR_CQ ;
 int RIO_IPWMR_EIE ;
 int RIO_IPWMR_PWE ;
 int RIO_IPWMR_QFIE ;
 int RIO_IPWMR_SEN ;
 int RIO_IPWSR_PWD ;
 int RIO_IPWSR_QFI ;
 int RIO_IPWSR_TE ;
 scalar_t__ RIO_LTLEECSR ;
 int RIO_PW_MSG_SIZE ;
 int dma_alloc_coherent (int ,int,scalar_t__*,int ) ;
 int dma_free_coherent (int ,int,int ,scalar_t__) ;
 int free_irq (int ,void*) ;
 int fsl_pw_dpc ;
 int fsl_rio_port_write_handler ;
 int in_be32 (int*) ;
 scalar_t__ kfifo_alloc (int *,int,int ) ;
 int out_be32 (int*,int) ;
 int pr_debug (char*,int,int) ;
 int pr_err (char*) ;
 int request_irq (int ,int ,int ,char*,void*) ;
 scalar_t__ rio_regs_win ;
 int spin_lock_init (int *) ;

int fsl_rio_port_write_init(struct fsl_rio_pw *pw)
{
 int rc = 0;


 out_be32(&pw->pw_regs->pwmr,
   in_be32(&pw->pw_regs->pwmr) & ~RIO_IPWMR_PWE);


 pw->port_write_msg.virt = dma_alloc_coherent(pw->dev,
     RIO_PW_MSG_SIZE,
     &pw->port_write_msg.phys, GFP_KERNEL);
 if (!pw->port_write_msg.virt) {
  pr_err("RIO: unable allocate port write queue\n");
  return -ENOMEM;
 }

 pw->port_write_msg.err_count = 0;
 pw->port_write_msg.discard_count = 0;


 out_be32(&pw->pw_regs->epwqbar, 0);
 out_be32(&pw->pw_regs->pwqbar, (u32) pw->port_write_msg.phys);

 pr_debug("EIPWQBAR: 0x%08x IPWQBAR: 0x%08x\n",
   in_be32(&pw->pw_regs->epwqbar),
   in_be32(&pw->pw_regs->pwqbar));


 out_be32(&pw->pw_regs->pwsr,
   (RIO_IPWSR_TE | RIO_IPWSR_QFI | RIO_IPWSR_PWD));



 out_be32(&pw->pw_regs->pwmr,
   RIO_IPWMR_SEN | RIO_IPWMR_QFIE | RIO_IPWMR_EIE | RIO_IPWMR_CQ);



 rc = request_irq(IRQ_RIO_PW(pw), fsl_rio_port_write_handler,
   IRQF_SHARED, "port-write", (void *)pw);
 if (rc < 0) {
  pr_err("MPC85xx RIO: unable to request inbound doorbell irq");
  goto err_out;
 }

 out_be32((u32 *)(rio_regs_win + RIO_LTLEECSR), LTLEECSR_ENABLE_ALL);

 INIT_WORK(&pw->pw_work, fsl_pw_dpc);
 spin_lock_init(&pw->pw_fifo_lock);
 if (kfifo_alloc(&pw->pw_fifo, RIO_PW_MSG_SIZE * 32, GFP_KERNEL)) {
  pr_err("FIFO allocation failed\n");
  rc = -ENOMEM;
  goto err_out_irq;
 }

 pr_debug("IPWMR: 0x%08x IPWSR: 0x%08x\n",
   in_be32(&pw->pw_regs->pwmr),
   in_be32(&pw->pw_regs->pwsr));

 return rc;

err_out_irq:
 free_irq(IRQ_RIO_PW(pw), (void *)pw);
err_out:
 dma_free_coherent(pw->dev, RIO_PW_MSG_SIZE,
  pw->port_write_msg.virt,
  pw->port_write_msg.phys);
 return rc;
}
