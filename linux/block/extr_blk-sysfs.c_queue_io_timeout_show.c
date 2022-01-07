
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int rq_timeout; } ;
typedef int ssize_t ;


 int jiffies_to_msecs (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t queue_io_timeout_show(struct request_queue *q, char *page)
{
 return sprintf(page, "%u\n", jiffies_to_msecs(q->rq_timeout));
}
