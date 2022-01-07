
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_service_queue {int pending_timer; int pending_tree; int * queued; } ;


 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT_CACHED ;
 int throtl_pending_timer_fn ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static void throtl_service_queue_init(struct throtl_service_queue *sq)
{
 INIT_LIST_HEAD(&sq->queued[0]);
 INIT_LIST_HEAD(&sq->queued[1]);
 sq->pending_tree = RB_ROOT_CACHED;
 timer_setup(&sq->pending_timer, throtl_pending_timer_fn, 0);
}
