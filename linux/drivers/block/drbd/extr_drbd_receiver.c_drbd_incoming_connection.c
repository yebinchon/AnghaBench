
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; struct accept_wait_data* sk_user_data; } ;
struct accept_wait_data {void (* original_sk_state_change ) (struct sock*) ;int door_bell; } ;


 scalar_t__ TCP_ESTABLISHED ;
 int complete (int *) ;

__attribute__((used)) static void drbd_incoming_connection(struct sock *sk)
{
 struct accept_wait_data *ad = sk->sk_user_data;
 void (*state_change)(struct sock *sk);

 state_change = ad->original_sk_state_change;
 if (sk->sk_state == TCP_ESTABLISHED)
  complete(&ad->door_bell);
 state_change(sk);
}
