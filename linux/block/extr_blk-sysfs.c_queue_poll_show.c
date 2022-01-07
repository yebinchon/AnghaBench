
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_flags; } ;
typedef int ssize_t ;


 int QUEUE_FLAG_POLL ;
 int queue_var_show (int ,char*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static ssize_t queue_poll_show(struct request_queue *q, char *page)
{
 return queue_var_show(test_bit(QUEUE_FLAG_POLL, &q->queue_flags), page);
}
