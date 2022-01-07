
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_queue {int head; int max_depth; int queue_depth; int tail_lock; scalar_t__ tail; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int vector_advancehead(struct vector_queue *qi, int advance)
{
 int queue_depth;

 qi->head =
  (qi->head + advance)
   % qi->max_depth;


 spin_lock(&qi->tail_lock);
 qi->queue_depth -= advance;





 if (qi->queue_depth == 0) {
  qi->head = 0;
  qi->tail = 0;
 }
 queue_depth = qi->queue_depth;
 spin_unlock(&qi->tail_lock);
 return queue_depth;
}
