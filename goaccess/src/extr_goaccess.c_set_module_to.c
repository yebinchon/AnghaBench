
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int no_tab_scroll; } ;
struct TYPE_6__ {int dash; } ;
struct TYPE_5__ {int current; } ;
typedef TYPE_1__ GScroll ;
typedef int GModule ;


 int DASH_COLLAPSED ;
 int collapse_current_module () ;
 TYPE_4__ conf ;
 int disabled_panel_msg (int ) ;
 int get_module_index (int ) ;
 TYPE_3__ gscroll ;
 int render_screens () ;

__attribute__((used)) static void
set_module_to (GScroll * scrll, GModule module)
{
  if (get_module_index (module) == -1) {
    disabled_panel_msg (module);
    return;
  }


  if (!conf.no_tab_scroll)
    gscroll.dash = get_module_index (module) * DASH_COLLAPSED;


  collapse_current_module ();
  scrll->current = module;
  render_screens ();
}
