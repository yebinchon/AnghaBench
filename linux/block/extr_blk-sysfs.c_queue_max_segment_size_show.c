
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
typedef int ssize_t ;


 int queue_max_segment_size (struct request_queue*) ;
 int queue_var_show (int ,char*) ;

__attribute__((used)) static ssize_t queue_max_segment_size_show(struct request_queue *q, char *page)
{
 return queue_var_show(queue_max_segment_size(q), (page));
}
