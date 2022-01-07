
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct ace_device* queuedata; } ;
struct ace_device {int rq_list; } ;


 int list_empty (int *) ;

__attribute__((used)) static bool ace_has_next_request(struct request_queue *q)
{
 struct ace_device *ace = q->queuedata;

 return !list_empty(&ace->rq_list);
}
