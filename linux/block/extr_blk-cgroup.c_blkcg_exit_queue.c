
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 int blk_throtl_exit (struct request_queue*) ;
 int blkg_destroy_all (struct request_queue*) ;

void blkcg_exit_queue(struct request_queue *q)
{
 blkg_destroy_all(q);
 blk_throtl_exit(q);
}
