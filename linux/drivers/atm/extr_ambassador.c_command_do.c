
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ request; } ;
typedef TYPE_2__ command ;
struct TYPE_16__ {int limit; int start; TYPE_2__* out; TYPE_2__* in; } ;
struct TYPE_17__ {scalar_t__ pending; scalar_t__ maximum; scalar_t__ high; int lock; int filled; TYPE_4__ ptrs; } ;
struct TYPE_15__ {int flags; TYPE_5__ cq; } ;
typedef TYPE_3__ amb_dev ;
typedef TYPE_4__ amb_cq_ptrs ;
typedef TYPE_5__ amb_cq ;
struct TYPE_13__ {int cmd_address; } ;
struct TYPE_18__ {TYPE_1__ adapter; } ;


 int DBG_CMD ;
 int DBG_FLOW ;
 int EAGAIN ;
 void* NEXTQ (TYPE_2__*,int ,int ) ;
 int PRINTD (int,char*,...) ;
 int SRB_COMPLETE ;
 int TASK_UNINTERRUPTIBLE ;
 int amb_mem ;
 scalar_t__ cpu_to_be32 (int ) ;
 int dead ;
 int dump_command (TYPE_2__*) ;
 TYPE_8__ mb ;
 int msleep (scalar_t__) ;
 int offsetof (int ,int ) ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int virt_to_bus (TYPE_2__*) ;
 int wr_mem (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int command_do (amb_dev * dev, command * cmd) {
  amb_cq * cq = &dev->cq;
  volatile amb_cq_ptrs * ptrs = &cq->ptrs;
  command * my_slot;

  PRINTD (DBG_FLOW|DBG_CMD, "command_do %p", dev);

  if (test_bit (dead, &dev->flags))
    return 0;

  spin_lock (&cq->lock);


  if (cq->pending < cq->maximum) {

    my_slot = ptrs->in;
    PRINTD (DBG_CMD, "command in slot %p", my_slot);

    dump_command (cmd);


    *ptrs->in = *cmd;
    cq->pending++;
    ptrs->in = NEXTQ (ptrs->in, ptrs->start, ptrs->limit);


    wr_mem (dev, offsetof(amb_mem, mb.adapter.cmd_address), virt_to_bus (ptrs->in));

    if (cq->pending > cq->high)
      cq->high = cq->pending;
    spin_unlock (&cq->lock);




    msleep(cq->pending);


    while (ptrs->out != my_slot) {
      PRINTD (DBG_CMD, "wait: command slot (now at %p)", ptrs->out);
      set_current_state(TASK_UNINTERRUPTIBLE);
      schedule();
    }


    while (ptrs->out->request != cpu_to_be32 (SRB_COMPLETE)) {
      PRINTD (DBG_CMD, "wait: command slot completion");
      set_current_state(TASK_UNINTERRUPTIBLE);
      schedule();
    }

    PRINTD (DBG_CMD, "command complete");

    spin_lock (&cq->lock);
    cq->pending--;

    *cmd = *ptrs->out;
    ptrs->out = NEXTQ (ptrs->out, ptrs->start, ptrs->limit);
    spin_unlock (&cq->lock);

    return 0;
  } else {
    cq->filled++;
    spin_unlock (&cq->lock);
    return -EAGAIN;
  }

}
