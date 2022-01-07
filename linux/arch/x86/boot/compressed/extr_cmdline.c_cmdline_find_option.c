
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cmdline_find_option (int ,char const*,char*,int) ;
 int get_cmd_line_ptr () ;

int cmdline_find_option(const char *option, char *buffer, int bufsize)
{
 return __cmdline_find_option(get_cmd_line_ptr(), option, buffer, bufsize);
}
