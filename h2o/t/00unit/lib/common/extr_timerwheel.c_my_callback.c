
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_timerwheel_entry_t ;


 int invokes ;

__attribute__((used)) static void my_callback(h2o_timerwheel_entry_t *timer)
{
    invokes++;
}
