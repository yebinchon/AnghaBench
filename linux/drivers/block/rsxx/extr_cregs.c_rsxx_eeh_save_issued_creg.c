
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; scalar_t__ active; int q_depth; int queue; int cmd_timer; struct creg_cmd* active_cmd; } ;
struct rsxx_cardinfo {TYPE_1__ creg_ctrl; } ;
struct creg_cmd {int list; } ;


 int del_timer_sync (int *) ;
 int list_add (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rsxx_eeh_save_issued_creg(struct rsxx_cardinfo *card)
{
 struct creg_cmd *cmd = ((void*)0);

 cmd = card->creg_ctrl.active_cmd;
 card->creg_ctrl.active_cmd = ((void*)0);

 if (cmd) {
  del_timer_sync(&card->creg_ctrl.cmd_timer);

  spin_lock_bh(&card->creg_ctrl.lock);
  list_add(&cmd->list, &card->creg_ctrl.queue);
  card->creg_ctrl.q_depth++;
  card->creg_ctrl.active = 0;
  spin_unlock_bh(&card->creg_ctrl.lock);
 }
}
