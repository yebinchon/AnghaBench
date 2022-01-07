
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fiq_handler {struct fiq_handler* next; int dev_id; scalar_t__ (* fiq_op ) (int ,int ) ;int name; } ;


 struct fiq_handler* current_fiq ;
 int dump_stack () ;
 int pr_err (char*,int ,int ) ;
 scalar_t__ stub1 (int ,int ) ;

void release_fiq(struct fiq_handler *f)
{
 if (current_fiq != f) {
  pr_err("%s FIQ trying to release %s FIQ\n",
         f->name, current_fiq->name);
  dump_stack();
  return;
 }

 do
  current_fiq = current_fiq->next;
 while (current_fiq->fiq_op(current_fiq->dev_id, 0));
}
