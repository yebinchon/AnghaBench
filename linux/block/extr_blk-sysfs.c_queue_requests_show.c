
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int nr_requests; } ;
typedef int ssize_t ;


 int queue_var_show (int ,char*) ;

__attribute__((used)) static ssize_t queue_requests_show(struct request_queue *q, char *page)
{
 return queue_var_show(q->nr_requests, (page));
}
