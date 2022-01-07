
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* parent_sq; } ;
struct throtl_grp {TYPE_2__ service_queue; int flags; } ;
struct TYPE_3__ {int nr_pending; } ;


 int THROTL_TG_PENDING ;
 int tg_service_queue_add (struct throtl_grp*) ;

__attribute__((used)) static void __throtl_enqueue_tg(struct throtl_grp *tg)
{
 tg_service_queue_add(tg);
 tg->flags |= THROTL_TG_PENDING;
 tg->service_queue.parent_sq->nr_pending++;
}
