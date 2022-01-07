
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cmdline_find_option_bool (int ,char const*) ;
 int get_cmd_line_ptr () ;

int cmdline_find_option_bool(const char *option)
{
 return __cmdline_find_option_bool(get_cmd_line_ptr(), option);
}
