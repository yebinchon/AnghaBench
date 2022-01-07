
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum color_diff { ____Placeholder_color_diff } color_diff ;


 char const** diff_colors ;
 scalar_t__ want_color (int) ;

const char *diff_get_color(int diff_use_color, enum color_diff ix)
{
 if (want_color(diff_use_color))
  return diff_colors[ix];
 return "";
}
