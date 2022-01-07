
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kill_children (int ,int) ;
 int pp_for_signal ;
 int raise (int) ;
 int sigchain_pop (int) ;

__attribute__((used)) static void handle_children_on_signal(int signo)
{
 kill_children(pp_for_signal, signo);
 sigchain_pop(signo);
 raise(signo);
}
