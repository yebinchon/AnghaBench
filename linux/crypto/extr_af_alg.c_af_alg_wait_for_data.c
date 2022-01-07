
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct alg_sock {struct af_alg_ctx* private; } ;
struct af_alg_ctx {int more; scalar_t__ used; } ;


 int DEFINE_WAIT_FUNC (int ,int ) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 long MAX_SCHEDULE_TIMEOUT ;
 unsigned int MSG_DONTWAIT ;
 int SOCKWQ_ASYNC_WAITDATA ;
 int add_wait_queue (int ,int *) ;
 struct alg_sock* alg_sk (struct sock*) ;
 int current ;
 int remove_wait_queue (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 int sk_clear_bit (int ,struct sock*) ;
 int sk_set_bit (int ,struct sock*) ;
 int sk_sleep (struct sock*) ;
 scalar_t__ sk_wait_event (struct sock*,long*,int,int *) ;
 int wait ;
 int woken_wake_function ;

int af_alg_wait_for_data(struct sock *sk, unsigned flags)
{
 DEFINE_WAIT_FUNC(wait, woken_wake_function);
 struct alg_sock *ask = alg_sk(sk);
 struct af_alg_ctx *ctx = ask->private;
 long timeout;
 int err = -ERESTARTSYS;

 if (flags & MSG_DONTWAIT)
  return -EAGAIN;

 sk_set_bit(SOCKWQ_ASYNC_WAITDATA, sk);

 add_wait_queue(sk_sleep(sk), &wait);
 for (;;) {
  if (signal_pending(current))
   break;
  timeout = MAX_SCHEDULE_TIMEOUT;
  if (sk_wait_event(sk, &timeout, (ctx->used || !ctx->more),
      &wait)) {
   err = 0;
   break;
  }
 }
 remove_wait_queue(sk_sleep(sk), &wait);

 sk_clear_bit(SOCKWQ_ASYNC_WAITDATA, sk);

 return err;
}
