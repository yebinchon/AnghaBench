
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BOOT_COMMAND_LINE_SIZE ;
 char* cmdline ;
 int getprop (void*,char*,char*,scalar_t__) ;
 int printf (char*,char*) ;
 int setprop_str (void*,char*,char*) ;

__attribute__((used)) static void prep_cmdline(void *chosen)
{
 if (cmdline[0] == '\0')
  getprop(chosen, "bootargs", cmdline, BOOT_COMMAND_LINE_SIZE-1);
 else
  setprop_str(chosen, "bootargs", cmdline);

 printf("cmdline: '%s'\n", cmdline);
}
