
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prof_bt_t ;


 int cassert (int ) ;
 int config_prof ;
 int not_reached () ;

__attribute__((used)) static void
prof_backtrace_impl(prof_bt_t *bt) {
 cassert(config_prof);
 not_reached();
}
