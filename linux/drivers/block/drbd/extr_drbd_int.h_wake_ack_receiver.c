
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {struct task_struct* task; } ;
struct drbd_connection {TYPE_1__ ack_receiver; } ;


 scalar_t__ RUNNING ;
 int SIGXCPU ;
 scalar_t__ get_t_state (TYPE_1__*) ;
 int send_sig (int ,struct task_struct*,int) ;

__attribute__((used)) static inline void wake_ack_receiver(struct drbd_connection *connection)
{
 struct task_struct *task = connection->ack_receiver.task;
 if (task && get_t_state(&connection->ack_receiver) == RUNNING)
  send_sig(SIGXCPU, task, 1);
}
