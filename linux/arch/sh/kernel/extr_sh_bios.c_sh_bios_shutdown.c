
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIOS_CALL_SHUTDOWN ;
 int sh_bios_call (int ,unsigned int,int ,int ,int ) ;

void sh_bios_shutdown(unsigned int how)
{
 sh_bios_call(BIOS_CALL_SHUTDOWN, how, 0, 0, 0);
}
