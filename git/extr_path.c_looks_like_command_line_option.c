
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int looks_like_command_line_option(const char *str)
{
 return str && str[0] == '-';
}
