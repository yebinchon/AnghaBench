
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_thread {int t_state; } ;
typedef enum drbd_thread_state { ____Placeholder_drbd_thread_state } drbd_thread_state ;


 int smp_rmb () ;

__attribute__((used)) static inline enum drbd_thread_state get_t_state(struct drbd_thread *thi)
{




 smp_rmb();
 return thi->t_state;
}
