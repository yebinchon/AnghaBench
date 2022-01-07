
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGQUIT ;
 int SIGTERM ;
 int sigchain_pop (int ) ;

void sigchain_pop_common(void)
{
 sigchain_pop(SIGPIPE);
 sigchain_pop(SIGQUIT);
 sigchain_pop(SIGTERM);
 sigchain_pop(SIGHUP);
 sigchain_pop(SIGINT);
}
