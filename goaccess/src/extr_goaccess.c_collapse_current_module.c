
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expanded; } ;


 int allocate_data () ;
 int dash ;
 int free_dashboard (int ) ;
 TYPE_1__ gscroll ;
 int render_screens () ;
 int reset_scroll_offsets (TYPE_1__*) ;

__attribute__((used)) static void
collapse_current_module (void)
{
  if (!gscroll.expanded)
    return;

  gscroll.expanded = 0;
  reset_scroll_offsets (&gscroll);
  free_dashboard (dash);
  allocate_data ();
  render_screens ();
}
