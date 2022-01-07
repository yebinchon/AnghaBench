
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int discard_count; int err_count; int virt; int msg_count; } ;
struct fsl_rio_pw {TYPE_2__* pw_regs; TYPE_1__ port_write_msg; int pw_work; int pw_fifo; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int pwsr; int pwmr; } ;


 int IRQ_HANDLED ;
 int RIO_EPWISR ;
 int RIO_EPWISR_MU ;
 int RIO_EPWISR_PINT1 ;
 int RIO_EPWISR_PINT2 ;
 int RIO_EPWISR_PW ;
 int RIO_IPWMR_CQ ;
 int RIO_IPWMR_EIE ;
 int RIO_IPWMR_PWE ;
 int RIO_IPWSR_PWB ;
 int RIO_IPWSR_PWD ;
 int RIO_IPWSR_QF ;
 int RIO_IPWSR_QFI ;
 int RIO_IPWSR_TE ;
 int RIO_LTLEDCSR ;
 scalar_t__ RIO_PW_MSG_SIZE ;
 int fsl_rio_port_error_handler (int) ;
 int in_be32 (int *) ;
 scalar_t__ kfifo_avail (int *) ;
 int kfifo_in (int *,int ,scalar_t__) ;
 int msg_unit_error_handler () ;
 int out_be32 (int *,int) ;
 int pr_debug (char*,...) ;
 int * rio_regs_win ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t
fsl_rio_port_write_handler(int irq, void *dev_instance)
{
 u32 ipwmr, ipwsr;
 struct fsl_rio_pw *pw = (struct fsl_rio_pw *)dev_instance;
 u32 epwisr, tmp;

 epwisr = in_be32(rio_regs_win + RIO_EPWISR);
 if (!(epwisr & RIO_EPWISR_PW))
  goto pw_done;

 ipwmr = in_be32(&pw->pw_regs->pwmr);
 ipwsr = in_be32(&pw->pw_regs->pwsr);
 if (ipwsr & RIO_IPWSR_QFI) {



  if (kfifo_avail(&pw->pw_fifo) >= RIO_PW_MSG_SIZE) {
   pw->port_write_msg.msg_count++;
   kfifo_in(&pw->pw_fifo, pw->port_write_msg.virt,
     RIO_PW_MSG_SIZE);
  } else {
   pw->port_write_msg.discard_count++;
   pr_debug("RIO: ISR Discarded Port-Write Msg(s) (%d)\n",
     pw->port_write_msg.discard_count);
  }



  out_be32(&pw->pw_regs->pwsr, RIO_IPWSR_QFI);
  out_be32(&pw->pw_regs->pwmr, ipwmr | RIO_IPWMR_CQ);

  schedule_work(&pw->pw_work);
 }

 if ((ipwmr & RIO_IPWMR_EIE) && (ipwsr & RIO_IPWSR_TE)) {
  pw->port_write_msg.err_count++;
  pr_debug("RIO: Port-Write Transaction Err (%d)\n",
    pw->port_write_msg.err_count);



  out_be32(&pw->pw_regs->pwmr, ipwmr & ~RIO_IPWMR_PWE);
  out_be32(&pw->pw_regs->pwsr, RIO_IPWSR_TE);
  out_be32(&pw->pw_regs->pwmr, ipwmr);
 }

 if (ipwsr & RIO_IPWSR_PWD) {
  pw->port_write_msg.discard_count++;
  pr_debug("RIO: Port Discarded Port-Write Msg(s) (%d)\n",
    pw->port_write_msg.discard_count);
  out_be32(&pw->pw_regs->pwsr, RIO_IPWSR_PWD);
 }

pw_done:
 if (epwisr & RIO_EPWISR_PINT1) {
  tmp = in_be32(rio_regs_win + RIO_LTLEDCSR);
  pr_debug("RIO_LTLEDCSR = 0x%x\n", tmp);
  fsl_rio_port_error_handler(0);
 }

 if (epwisr & RIO_EPWISR_PINT2) {
  tmp = in_be32(rio_regs_win + RIO_LTLEDCSR);
  pr_debug("RIO_LTLEDCSR = 0x%x\n", tmp);
  fsl_rio_port_error_handler(1);
 }

 if (epwisr & RIO_EPWISR_MU) {
  tmp = in_be32(rio_regs_win + RIO_LTLEDCSR);
  pr_debug("RIO_LTLEDCSR = 0x%x\n", tmp);
  msg_unit_error_handler();
 }

 return IRQ_HANDLED;
}
