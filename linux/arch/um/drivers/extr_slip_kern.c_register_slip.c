
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_transport (int *) ;
 int slip_transport ;

__attribute__((used)) static int register_slip(void)
{
 register_transport(&slip_transport);
 return 0;
}
