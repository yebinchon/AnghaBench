
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ color_idx; int colors; } ;


 int add_default_colors () ;
 TYPE_1__ conf ;
 scalar_t__ errno ;
 int parse_colors (int ,scalar_t__) ;

void
set_colors (int force)
{
  errno = 0;
  if (conf.color_idx > 0 && !force)
    parse_colors (conf.colors, conf.color_idx);
  else
    add_default_colors ();
}
