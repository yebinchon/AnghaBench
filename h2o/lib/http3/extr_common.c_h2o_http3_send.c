
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int quicly_datagram_t ;
typedef int packets ;
struct TYPE_12__ {TYPE_2__* callbacks; TYPE_7__* ctx; int quic; } ;
typedef TYPE_3__ h2o_http3_conn_t ;
struct TYPE_14__ {TYPE_1__* quic; } ;
struct TYPE_13__ {int (* free_packet ) (TYPE_5__*,int *) ;} ;
struct TYPE_11__ {int (* destroy_connection ) (TYPE_3__*) ;} ;
struct TYPE_10__ {TYPE_5__* packet_allocator; } ;



 int abort () ;
 int fprintf (int ,char*,int) ;
 int h2o_http3_schedule_timer (TYPE_3__*) ;
 int h2o_http3_send_datagram (TYPE_7__*,int *) ;
 int quicly_send (int ,int **,size_t*) ;
 int stderr ;
 int stub1 (TYPE_5__*,int *) ;
 int stub2 (TYPE_5__*,int *) ;
 int stub3 (TYPE_3__*) ;

int h2o_http3_send(h2o_http3_conn_t *conn)
{
    quicly_datagram_t *packets[16];
    size_t num_packets, i;

    do {
        num_packets = sizeof(packets) / sizeof(packets[0]);
        int ret = quicly_send(conn->quic, packets, &num_packets);
        switch (ret) {
        case 0:
            for (i = 0; i != num_packets; ++i) {
                if (!h2o_http3_send_datagram(conn->ctx, packets[i])) {

                    break;
                }
                conn->ctx->quic->packet_allocator->free_packet(conn->ctx->quic->packet_allocator, packets[i]);
            }
            for (; i != num_packets; ++i)
                conn->ctx->quic->packet_allocator->free_packet(conn->ctx->quic->packet_allocator, packets[i]);
            break;
        case 128:
            conn->callbacks->destroy_connection(conn);
            return 0;
        default:
            fprintf(stderr, "quicly_send returned %d\n", ret);
            abort();
        }
    } while (num_packets == sizeof(packets) / sizeof(packets[0]));

    h2o_http3_schedule_timer(conn);

    return 1;
}
