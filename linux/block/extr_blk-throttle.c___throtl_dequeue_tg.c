
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent_sq; } ;
struct throtl_grp {int flags; TYPE_1__ service_queue; int rb_node; } ;


 int THROTL_TG_PENDING ;
 int throtl_rb_erase (int *,int ) ;

__attribute__((used)) static void __throtl_dequeue_tg(struct throtl_grp *tg)
{
 throtl_rb_erase(&tg->rb_node, tg->service_queue.parent_sq);
 tg->flags &= ~THROTL_TG_PENDING;
}
