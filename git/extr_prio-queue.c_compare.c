
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prio_queue {int (* compare ) (int ,int ,int ) ;TYPE_1__* array; int cb_data; } ;
struct TYPE_2__ {int ctr; int data; } ;


 int stub1 (int ,int ,int ) ;

__attribute__((used)) static inline int compare(struct prio_queue *queue, int i, int j)
{
 int cmp = queue->compare(queue->array[i].data, queue->array[j].data,
     queue->cb_data);
 if (!cmp)
  cmp = queue->array[i].ctr - queue->array[j].ctr;
 return cmp;
}
