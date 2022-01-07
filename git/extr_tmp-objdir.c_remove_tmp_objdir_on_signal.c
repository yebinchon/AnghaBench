
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int raise (int) ;
 int sigchain_pop (int) ;
 int the_tmp_objdir ;
 int tmp_objdir_destroy_1 (int ,int) ;

__attribute__((used)) static void remove_tmp_objdir_on_signal(int signo)
{
 tmp_objdir_destroy_1(the_tmp_objdir, 1);
 sigchain_pop(signo);
 raise(signo);
}
