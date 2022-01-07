
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v ;
struct TYPE_2__ {int (* edit_cmdline ) (char*,int,unsigned int) ;} ;


 int BOOT_COMMAND_LINE_SIZE ;
 char* cmdline ;
 TYPE_1__ console_ops ;
 int getprop (void*,char*,...) ;
 int printf (char*,...) ;
 int setprop_str (void*,char*,char*) ;
 int stub1 (char*,int,unsigned int) ;

__attribute__((used)) static void prep_cmdline(void *chosen)
{
 unsigned int getline_timeout = 5000;
 int v;
 int n;


 n = getprop(chosen, "linux,cmdline-timeout", &v, sizeof(v));
 if (n == sizeof(v))
  getline_timeout = v;

 if (cmdline[0] == '\0')
  getprop(chosen, "bootargs", cmdline, BOOT_COMMAND_LINE_SIZE-1);

 printf("\n\rLinux/PowerPC load: %s", cmdline);


 if (console_ops.edit_cmdline && getline_timeout)
  console_ops.edit_cmdline(cmdline, BOOT_COMMAND_LINE_SIZE, getline_timeout);

 printf("\n\r");


 setprop_str(chosen, "bootargs", cmdline);
}
