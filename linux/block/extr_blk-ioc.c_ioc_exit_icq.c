
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct io_cq {int flags; TYPE_2__* q; } ;
struct TYPE_6__ {int (* exit_icq ) (struct io_cq*) ;} ;
struct elevator_type {TYPE_3__ ops; } ;
struct TYPE_5__ {TYPE_1__* elevator; } ;
struct TYPE_4__ {struct elevator_type* type; } ;


 int ICQ_EXITED ;
 int stub1 (struct io_cq*) ;

__attribute__((used)) static void ioc_exit_icq(struct io_cq *icq)
{
 struct elevator_type *et = icq->q->elevator->type;

 if (icq->flags & ICQ_EXITED)
  return;

 if (et->ops.exit_icq)
  et->ops.exit_icq(icq);

 icq->flags |= ICQ_EXITED;
}
