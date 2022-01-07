
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct mc_request {int originating_fd; TYPE_1__* cmd; int regs; } ;
struct TYPE_2__ {void (* handler ) (struct mc_request*) ;} ;


 int MCONSOLE_IRQ ;
 int deactivate_fd (int ,int ) ;
 int mconsole_get_request (int ,struct mc_request*) ;
 void mconsole_go (struct mc_request*) ;
 int mconsole_reply (struct mc_request*,char*,int,int ) ;
 void mconsole_sysrq (struct mc_request*) ;
 int os_set_fd_block (int ,int) ;
 struct pt_regs* set_irq_regs (struct pt_regs*) ;
 void stub1 (struct mc_request*) ;

void mconsole_stop(struct mc_request *req)
{
 deactivate_fd(req->originating_fd, MCONSOLE_IRQ);
 os_set_fd_block(req->originating_fd, 1);
 mconsole_reply(req, "stopped", 0, 0);
 for (;;) {
  if (!mconsole_get_request(req->originating_fd, req))
   continue;
  if (req->cmd->handler == mconsole_go)
   break;
  if (req->cmd->handler == mconsole_stop) {
   mconsole_reply(req, "Already stopped", 1, 0);
   continue;
  }
  if (req->cmd->handler == mconsole_sysrq) {
   struct pt_regs *old_regs;
   old_regs = set_irq_regs((struct pt_regs *)&req->regs);
   mconsole_sysrq(req);
   set_irq_regs(old_regs);
   continue;
  }
  (*req->cmd->handler)(req);
 }
 os_set_fd_block(req->originating_fd, 0);
 mconsole_reply(req, "", 0, 0);
}
