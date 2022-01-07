
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum decoration_type { ____Placeholder_decoration_type } decoration_type ;


 char const** decoration_colors ;
 scalar_t__ want_color (int) ;

__attribute__((used)) static const char *decorate_get_color(int decorate_use_color, enum decoration_type ix)
{
 if (want_color(decorate_use_color))
  return decoration_colors[ix];
 return "";
}
