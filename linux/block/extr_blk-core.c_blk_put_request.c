
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;


 int blk_mq_free_request (struct request*) ;

void blk_put_request(struct request *req)
{
 blk_mq_free_request(req);
}
