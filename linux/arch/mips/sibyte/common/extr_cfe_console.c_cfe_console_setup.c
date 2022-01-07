
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int ENODEV ;
 scalar_t__ cfe_getenv (char*,char*,int) ;
 int setleds (char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int cfe_console_setup(struct console *cons, char *str)
{
 char consdev[32];


 if (cfe_getenv("BOOT_CONSOLE", consdev, 32) >= 0) {
   return -ENODEV;
 }
 return 0;
}
