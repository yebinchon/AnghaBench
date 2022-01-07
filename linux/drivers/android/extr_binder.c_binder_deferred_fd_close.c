
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct binder_task_work_cb {int twork; scalar_t__ file; } ;


 int GFP_KERNEL ;
 int __close_fd_get_file (int,scalar_t__*) ;
 int binder_do_fd_close ;
 int current ;
 int init_task_work (int *,int ) ;
 int kfree (struct binder_task_work_cb*) ;
 struct binder_task_work_cb* kzalloc (int,int ) ;
 int task_work_add (int ,int *,int) ;

__attribute__((used)) static void binder_deferred_fd_close(int fd)
{
 struct binder_task_work_cb *twcb;

 twcb = kzalloc(sizeof(*twcb), GFP_KERNEL);
 if (!twcb)
  return;
 init_task_work(&twcb->twork, binder_do_fd_close);
 __close_fd_get_file(fd, &twcb->file);
 if (twcb->file)
  task_work_add(current, &twcb->twork, 1);
 else
  kfree(twcb);
}
