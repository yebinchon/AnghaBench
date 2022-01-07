
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fiq_handler {int (* fiq_op ) (int ,int) ;struct fiq_handler* next; int dev_id; } ;


 int EBUSY ;
 struct fiq_handler* current_fiq ;
 int stub1 (int ,int) ;

int claim_fiq(struct fiq_handler *f)
{
 int ret = 0;

 if (current_fiq) {
  ret = -EBUSY;

  if (current_fiq->fiq_op != ((void*)0))
   ret = current_fiq->fiq_op(current_fiq->dev_id, 1);
 }

 if (!ret) {
  f->next = current_fiq;
  current_fiq = f;
 }

 return ret;
}
