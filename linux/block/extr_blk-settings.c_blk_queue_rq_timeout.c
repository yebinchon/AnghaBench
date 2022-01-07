
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {unsigned int rq_timeout; } ;



void blk_queue_rq_timeout(struct request_queue *q, unsigned int timeout)
{
 q->rq_timeout = timeout;
}
