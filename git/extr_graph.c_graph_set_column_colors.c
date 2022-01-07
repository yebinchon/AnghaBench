
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** column_colors ;
 unsigned short column_colors_max ;

void graph_set_column_colors(const char **colors, unsigned short colors_max)
{
 column_colors = colors;
 column_colors_max = colors_max;
}
