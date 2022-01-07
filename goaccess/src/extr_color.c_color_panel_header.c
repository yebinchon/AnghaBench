
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GColors ;


 int COLOR_PANEL_HEADER ;
 int * get_color (int ) ;

GColors *
color_panel_header (void)
{
  return get_color (COLOR_PANEL_HEADER);
}
