
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMMAND_LINE_SIZE ;
 int __cmdline_find_option_bool (char const*,int ,char const*) ;

int cmdline_find_option_bool(const char *cmdline, const char *option)
{
 return __cmdline_find_option_bool(cmdline, COMMAND_LINE_SIZE, option);
}
