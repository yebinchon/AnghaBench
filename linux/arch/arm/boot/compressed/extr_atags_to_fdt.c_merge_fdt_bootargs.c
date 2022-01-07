
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMMAND_LINE_SIZE ;
 char* getprop (void*,char*,char*,int*) ;
 int memcpy (char*,char const*,int) ;
 int setprop_string (void*,char*,char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static void merge_fdt_bootargs(void *fdt, const char *fdt_cmdline)
{
 char cmdline[COMMAND_LINE_SIZE];
 const char *fdt_bootargs;
 char *ptr = cmdline;
 int len = 0;


 fdt_bootargs = getprop(fdt, "/chosen", "bootargs", &len);
 if (fdt_bootargs)
  if (len < COMMAND_LINE_SIZE) {
   memcpy(ptr, fdt_bootargs, len);


   ptr += len - 1;
  }


 if (fdt_cmdline) {
  len = strlen(fdt_cmdline);
  if (ptr - cmdline + len + 2 < COMMAND_LINE_SIZE) {
   *ptr++ = ' ';
   memcpy(ptr, fdt_cmdline, len);
   ptr += len;
  }
 }
 *ptr = '\0';

 setprop_string(fdt, "/chosen", "bootargs", cmdline);
}
