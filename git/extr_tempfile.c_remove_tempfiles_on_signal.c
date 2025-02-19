
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int raise (int) ;
 int remove_tempfiles (int) ;
 int sigchain_pop (int) ;

__attribute__((used)) static void remove_tempfiles_on_signal(int signo)
{
 remove_tempfiles(1);
 sigchain_pop(signo);
 raise(signo);
}
