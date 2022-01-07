
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_wmem_queued; int sk_sndbuf; } ;
struct TYPE_4__ {TYPE_1__* socket; } ;
struct drbd_connection {int flags; TYPE_2__ data; } ;
struct TYPE_3__ {struct sock* sk; } ;


 int NET_CONGESTED ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void drbd_update_congested(struct drbd_connection *connection)
{
 struct sock *sk = connection->data.socket->sk;
 if (sk->sk_wmem_queued > sk->sk_sndbuf * 4 / 5)
  set_bit(NET_CONGESTED, &connection->flags);
}
