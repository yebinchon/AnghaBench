
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int expanded; int current; } ;


 int LINES ;
 int MAX_HEIGHT_HEADER ;
 int allocate_data () ;
 int allocate_holder_by_module (int ) ;
 int dash ;
 int free_dashboard (int ) ;
 int free_holder_by_module (int *,int ) ;
 TYPE_1__ gscroll ;
 int holder ;
 int render_screens () ;
 int reset_scroll_offsets (TYPE_1__*) ;
 scalar_t__ set_module_from_mouse_event (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
expand_module_from_ypos (int y)
{

  if (y < MAX_HEIGHT_HEADER || y == LINES - 1)
    return;

  if (set_module_from_mouse_event (&gscroll, dash, y))
    return;

  reset_scroll_offsets (&gscroll);
  gscroll.expanded = 1;

  free_holder_by_module (&holder, gscroll.current);
  free_dashboard (dash);
  allocate_holder_by_module (gscroll.current);
  allocate_data ();

  render_screens ();
}
