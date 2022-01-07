
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thd_t ;


 int do_fork_thd (int *) ;
 int thd_create (int *,int (*) (int *),int *) ;
 int thd_join (int ,int *) ;

__attribute__((used)) static void
do_test_fork_multithreaded() {
 thd_t child;
 thd_create(&child, do_fork_thd, ((void*)0));
 do_fork_thd(((void*)0));
 thd_join(child, ((void*)0));
}
