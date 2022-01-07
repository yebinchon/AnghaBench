
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct packet_info {int dummy; } ;
struct TYPE_7__ {TYPE_2__* socket; } ;
struct drbd_connection {int ping_wait; int flags; TYPE_4__* net_conf; TYPE_3__ meta; } ;
struct TYPE_8__ {int ping_int; } ;
struct TYPE_6__ {TYPE_1__* sk; } ;
struct TYPE_5__ {int sk_rcvtimeo; } ;


 int GOT_PING_ACK ;
 int HZ ;
 int test_and_set_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int got_PingAck(struct drbd_connection *connection, struct packet_info *pi)
{

 connection->meta.socket->sk->sk_rcvtimeo = connection->net_conf->ping_int*HZ;
 if (!test_and_set_bit(GOT_PING_ACK, &connection->flags))
  wake_up(&connection->ping_wait);

 return 0;
}
