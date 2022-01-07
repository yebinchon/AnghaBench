
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attr; } ;
typedef TYPE_1__ GColors ;


 int A_BLINK ;
 int A_BOLD ;
 int A_NORMAL ;
 int A_REVERSE ;
 int A_UNDERLINE ;
 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static void
locate_attr_color (GColors * color, const char *attr)
{
  if (strstr (attr, "bold"))
    color->attr |= A_BOLD;
  if (strstr (attr, "underline"))
    color->attr |= A_UNDERLINE;
  if (strstr (attr, "normal"))
    color->attr |= A_NORMAL;
  if (strstr (attr, "reverse"))
    color->attr |= A_REVERSE;
  if (strstr (attr, "standout"))
    color->attr |= A_REVERSE;
  if (strstr (attr, "blink"))
    color->attr |= A_BLINK;
}
