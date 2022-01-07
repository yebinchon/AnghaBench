
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int fd_timer_fn () ;

__attribute__((used)) static void fd_timer_workfn(struct work_struct *work)
{
 fd_timer_fn();
}
