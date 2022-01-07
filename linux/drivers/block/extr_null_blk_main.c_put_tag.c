
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_queue {int wait; int tag_map; } ;


 int clear_bit_unlock (unsigned int,int ) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void put_tag(struct nullb_queue *nq, unsigned int tag)
{
 clear_bit_unlock(tag, nq->tag_map);

 if (waitqueue_active(&nq->wait))
  wake_up(&nq->wait);
}
