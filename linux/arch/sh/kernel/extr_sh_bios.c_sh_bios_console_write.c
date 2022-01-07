
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIOS_CALL_CONSOLE_WRITE ;
 int sh_bios_call (int ,long,long,int ,int ) ;

void sh_bios_console_write(const char *buf, unsigned int len)
{
 sh_bios_call(BIOS_CALL_CONSOLE_WRITE, (long)buf, (long)len, 0, 0);
}
