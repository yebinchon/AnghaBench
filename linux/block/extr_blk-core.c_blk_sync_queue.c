
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int timeout_work; int timeout; } ;


 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;

void blk_sync_queue(struct request_queue *q)
{
 del_timer_sync(&q->timeout);
 cancel_work_sync(&q->timeout_work);
}
