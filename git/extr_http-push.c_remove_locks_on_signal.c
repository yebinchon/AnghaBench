
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int raise (int) ;
 int remove_locks () ;
 int sigchain_pop (int) ;

__attribute__((used)) static void remove_locks_on_signal(int signo)
{
 remove_locks();
 sigchain_pop(signo);
 raise(signo);
}
