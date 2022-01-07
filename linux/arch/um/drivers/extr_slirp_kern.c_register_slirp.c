
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_transport (int *) ;
 int slirp_transport ;

__attribute__((used)) static int register_slirp(void)
{
 register_transport(&slirp_transport);
 return 0;
}
