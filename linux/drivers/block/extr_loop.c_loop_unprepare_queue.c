
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int worker_task; int worker; } ;


 int kthread_flush_worker (int *) ;
 int kthread_stop (int ) ;

__attribute__((used)) static void loop_unprepare_queue(struct loop_device *lo)
{
 kthread_flush_worker(&lo->worker);
 kthread_stop(lo->worker_task);
}
