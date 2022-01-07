
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {unsigned int required_elevator_features; } ;



void blk_queue_required_elevator_features(struct request_queue *q,
       unsigned int features)
{
 q->required_elevator_features = features;
}
