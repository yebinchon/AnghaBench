
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inet_register () ;
 int mconsole_register_dev (int *) ;
 int net_mc ;

__attribute__((used)) static int uml_net_init(void)
{
 mconsole_register_dev(&net_mc);
 inet_register();
 return 0;
}
