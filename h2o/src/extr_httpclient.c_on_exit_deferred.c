
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_timer_t ;


 int exit (int) ;
 int h2o_timer_unlink (int *) ;

__attribute__((used)) static void on_exit_deferred(h2o_timer_t *entry)
{
    h2o_timer_unlink(entry);
    exit(1);
}
