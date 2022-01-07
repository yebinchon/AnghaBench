
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int daemon_transport ;
 int register_transport (int *) ;

__attribute__((used)) static int register_daemon(void)
{
 register_transport(&daemon_transport);
 return 0;
}
