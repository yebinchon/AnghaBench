
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cleanup_children (int,int) ;
 int raise (int) ;
 int sigchain_pop (int) ;

__attribute__((used)) static void cleanup_children_on_signal(int sig)
{
 cleanup_children(sig, 1);
 sigchain_pop(sig);
 raise(sig);
}
