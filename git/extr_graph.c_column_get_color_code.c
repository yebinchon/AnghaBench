
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** column_colors ;

__attribute__((used)) static const char *column_get_color_code(unsigned short color)
{
 return column_colors[color];
}
