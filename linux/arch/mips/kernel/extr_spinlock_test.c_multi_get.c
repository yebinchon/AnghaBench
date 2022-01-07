
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct spin_multi_state {int loops; int exit_wait; int enter_wait; int start_wait; int lock; } ;
struct spin_multi_per_thread {int start; struct spin_multi_state* state; } ;
typedef int ktime_t ;


 int __RAW_SPIN_LOCK_UNLOCKED (char*) ;
 int atomic_set (int *,int) ;
 int kthread_run (int (*) (struct spin_multi_per_thread*),struct spin_multi_per_thread*,char*) ;
 int ktime_get () ;
 int ktime_us_delta (int ,int ) ;
 int multi_other (struct spin_multi_per_thread*) ;

__attribute__((used)) static int multi_get(void *data, u64 *val)
{
 ktime_t finish;
 struct spin_multi_state ms;
 struct spin_multi_per_thread t1, t2;

 ms.lock = __RAW_SPIN_LOCK_UNLOCKED("multi_get");
 ms.loops = 1000000;

 atomic_set(&ms.start_wait, 2);
 atomic_set(&ms.enter_wait, 2);
 atomic_set(&ms.exit_wait, 2);
 t1.state = &ms;
 t2.state = &ms;

 kthread_run(multi_other, &t2, "multi_get");

 multi_other(&t1);

 finish = ktime_get();

 *val = ktime_us_delta(finish, t1.start);

 return 0;
}
