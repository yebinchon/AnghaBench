
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nlm_fmn_msg {int dummy; } ;
struct fmn_message_handler {int arg; int (* action ) (int,int,int,int,struct nlm_fmn_msg*,int ) ;} ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct fmn_message_handler* msg_handlers ;
 int nlm_cop2_disable_irqrestore (int) ;
 int nlm_cop2_enable_irqsave () ;
 int nlm_fmn_receive (int,int*,int*,int*,struct nlm_fmn_msg*) ;
 int nlm_fmn_setup_intr (int,int) ;
 int nlm_read_c2_status0 () ;
 int nlm_threads_per_core ;
 int pr_warn (char*,int) ;
 int stub1 (int,int,int,int,struct nlm_fmn_msg*,int ) ;

__attribute__((used)) static irqreturn_t fmn_message_handler(int irq, void *data)
{
 struct fmn_message_handler *hndlr;
 int bucket, rv;
 int size = 0, code = 0, src_stnid = 0;
 struct nlm_fmn_msg msg;
 uint32_t mflags, bkt_status;

 mflags = nlm_cop2_enable_irqsave();

 nlm_fmn_setup_intr(irq, 0);
 while (1) {


  bkt_status = (nlm_read_c2_status0() >> 24) & 0xff;
  if (bkt_status == 0xff)
   break;
  for (bucket = 0; bucket < 8; bucket++) {

   if (bkt_status & (1 << bucket))
    continue;
   rv = nlm_fmn_receive(bucket, &size, &code, &src_stnid,
      &msg);
   if (rv != 0)
    continue;

   hndlr = &msg_handlers[src_stnid];
   if (hndlr->action == ((void*)0))
    pr_warn("No msgring handler for stnid %d\n",
      src_stnid);
   else {
    nlm_cop2_disable_irqrestore(mflags);
    hndlr->action(bucket, src_stnid, size, code,
     &msg, hndlr->arg);
    mflags = nlm_cop2_enable_irqsave();
   }
  }
 };

 nlm_fmn_setup_intr(irq, (1 << nlm_threads_per_core) - 1);
 nlm_cop2_disable_irqrestore(mflags);
 return IRQ_HANDLED;
}
