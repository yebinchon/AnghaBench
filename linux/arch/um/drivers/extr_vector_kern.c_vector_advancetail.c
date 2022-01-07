
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_queue {int tail; int max_depth; int queue_depth; int head_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int vector_advancetail(struct vector_queue *qi, int advance)
{
 int queue_depth;

 qi->tail =
  (qi->tail + advance)
   % qi->max_depth;
 spin_lock(&qi->head_lock);
 qi->queue_depth += advance;
 queue_depth = qi->queue_depth;
 spin_unlock(&qi->head_lock);
 return queue_depth;
}
