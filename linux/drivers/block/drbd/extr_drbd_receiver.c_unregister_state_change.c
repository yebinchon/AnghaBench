
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_callback_lock; int * sk_user_data; int sk_state_change; } ;
struct accept_wait_data {int original_sk_state_change; } ;


 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void unregister_state_change(struct sock *sk, struct accept_wait_data *ad)
{
 write_lock_bh(&sk->sk_callback_lock);
 sk->sk_state_change = ad->original_sk_state_change;
 sk->sk_user_data = ((void*)0);
 write_unlock_bh(&sk->sk_callback_lock);
}
