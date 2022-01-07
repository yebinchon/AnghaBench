
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMMAND_LINE_SIZE ;
 int __cmdline_find_option (char const*,int ,char const*,char*,int) ;

int cmdline_find_option(const char *cmdline, const char *option, char *buffer,
   int bufsize)
{
 return __cmdline_find_option(cmdline, COMMAND_LINE_SIZE, option,
         buffer, bufsize);
}
