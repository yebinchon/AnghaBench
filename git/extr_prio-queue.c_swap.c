
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prio_queue {int * array; } ;


 int SWAP (int ,int ) ;

__attribute__((used)) static inline void swap(struct prio_queue *queue, int i, int j)
{
 SWAP(queue->array[i], queue->array[j]);
}
