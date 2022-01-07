
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int kobj; } ;


 int kobject_get (int *) ;

__attribute__((used)) static inline void __blk_get_queue(struct request_queue *q)
{
 kobject_get(&q->kobj);
}
