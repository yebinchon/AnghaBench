
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_thread {int dummy; } ;


 int _drbd_thread_stop (struct drbd_thread*,int,int) ;

__attribute__((used)) static inline void drbd_thread_restart_nowait(struct drbd_thread *thi)
{
 _drbd_thread_stop(thi, 1, 0);
}
