
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int sent; } ;
struct TYPE_10__ {scalar_t__ bytes_in_flight; } ;
struct TYPE_14__ {TYPE_6__ max_data; TYPE_1__ sentmap; int last_retransmittable_sent_at; int loss; } ;
struct TYPE_11__ {scalar_t__ send_probe; } ;
struct TYPE_12__ {TYPE_2__ address_validation; } ;
struct TYPE_13__ {TYPE_3__ peer; } ;
struct TYPE_16__ {TYPE_5__ egress; TYPE_4__ super; } ;
typedef TYPE_7__ quicly_conn_t ;


 int now ;
 int quicly_loss_update_alarm (int *,int ,int ,int,int ,int ) ;
 int scheduler_can_send (TYPE_7__*) ;

__attribute__((used)) static void update_loss_alarm(quicly_conn_t *conn)
{
    quicly_loss_update_alarm(&conn->egress.loss, now, conn->egress.last_retransmittable_sent_at,
                             conn->egress.sentmap.bytes_in_flight != 0 || conn->super.peer.address_validation.send_probe,
                             scheduler_can_send(conn), conn->egress.max_data.sent);
}
