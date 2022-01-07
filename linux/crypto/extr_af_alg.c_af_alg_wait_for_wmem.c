
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int DEFINE_WAIT_FUNC (int ,int ) ;
 int EAGAIN ;
 int ERESTARTSYS ;
 long MAX_SCHEDULE_TIMEOUT ;
 unsigned int MSG_DONTWAIT ;
 int SOCKWQ_ASYNC_NOSPACE ;
 int add_wait_queue (int ,int *) ;
 int af_alg_writable (struct sock*) ;
 int current ;
 int remove_wait_queue (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 int sk_set_bit (int ,struct sock*) ;
 int sk_sleep (struct sock*) ;
 scalar_t__ sk_wait_event (struct sock*,long*,int ,int *) ;
 int wait ;
 int woken_wake_function ;

__attribute__((used)) static int af_alg_wait_for_wmem(struct sock *sk, unsigned int flags)
{
 DEFINE_WAIT_FUNC(wait, woken_wake_function);
 int err = -ERESTARTSYS;
 long timeout;

 if (flags & MSG_DONTWAIT)
  return -EAGAIN;

 sk_set_bit(SOCKWQ_ASYNC_NOSPACE, sk);

 add_wait_queue(sk_sleep(sk), &wait);
 for (;;) {
  if (signal_pending(current))
   break;
  timeout = MAX_SCHEDULE_TIMEOUT;
  if (sk_wait_event(sk, &timeout, af_alg_writable(sk), &wait)) {
   err = 0;
   break;
  }
 }
 remove_wait_queue(sk_sleep(sk), &wait);

 return err;
}
