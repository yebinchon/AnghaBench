
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int prof_bt_t ;


 int cassert (int ) ;
 int config_prof ;
 int post_reentrancy (int *) ;
 int pre_reentrancy (int *,int *) ;
 int prof_backtrace_impl (int *) ;

void
prof_backtrace(tsd_t *tsd, prof_bt_t *bt) {
 cassert(config_prof);
 pre_reentrancy(tsd, ((void*)0));
 prof_backtrace_impl(bt);
 post_reentrancy(tsd);
}
