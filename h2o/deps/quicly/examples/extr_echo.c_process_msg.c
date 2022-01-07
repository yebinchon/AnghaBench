
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msghdr {int msg_name; TYPE_1__* msg_iov; } ;
typedef int quicly_decoded_packet_t ;
typedef int quicly_conn_t ;
struct TYPE_2__ {scalar_t__ iov_base; } ;


 size_t SIZE_MAX ;
 int ctx ;
 int next_cid ;
 int quicly_accept (int **,int *,int *,int ,int *,int *,int *,int *) ;
 size_t quicly_decode_packet (int *,int *,scalar_t__,size_t) ;
 scalar_t__ quicly_is_destination (int *,int *,int ,int *) ;
 int quicly_receive (int *,int *,int ,int *) ;

__attribute__((used)) static void process_msg(int is_client, quicly_conn_t **conns, struct msghdr *msg, size_t dgram_len)
{
    size_t off, packet_len, i;


    for (off = 0; off < dgram_len; off += packet_len) {
        quicly_decoded_packet_t decoded;
        if ((packet_len = quicly_decode_packet(&ctx, &decoded, msg->msg_iov[0].iov_base + off, dgram_len - off)) == SIZE_MAX)
            return;

        for (i = 0; conns[i] != ((void*)0); ++i)
            if (quicly_is_destination(conns[i], ((void*)0), msg->msg_name, &decoded))
                break;
        if (conns[i] != ((void*)0)) {

            quicly_receive(conns[i], ((void*)0), msg->msg_name, &decoded);
        } else if (!is_client) {

            quicly_accept(conns + i, &ctx, ((void*)0), msg->msg_name, &decoded, ((void*)0), &next_cid, ((void*)0));
        }
    }
}
