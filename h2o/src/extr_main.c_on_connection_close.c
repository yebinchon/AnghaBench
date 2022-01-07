
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_connections; } ;


 TYPE_1__ conf ;
 int notify_all_threads () ;
 int num_connections (int) ;

__attribute__((used)) static void on_connection_close(void)
{
    int prev_num_connections = num_connections(-1);

    if (prev_num_connections == conf.max_connections) {

        notify_all_threads();
    }
}
