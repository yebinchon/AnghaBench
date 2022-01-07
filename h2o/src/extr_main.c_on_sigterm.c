
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shutdown_requested; int startup_sync_barrier; } ;


 TYPE_1__ conf ;
 int exit (int ) ;
 int h2o_barrier_done (int *) ;
 int notify_all_threads () ;

__attribute__((used)) static void on_sigterm(int signo)
{
    conf.shutdown_requested = 1;
    if (!h2o_barrier_done(&conf.startup_sync_barrier)) {

        exit(0);
    }
    notify_all_threads();
}
