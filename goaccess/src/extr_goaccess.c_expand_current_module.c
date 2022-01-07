
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expanded; scalar_t__ current; } ;


 scalar_t__ HOSTS ;
 int allocate_data () ;
 int allocate_holder_by_module (scalar_t__) ;
 int dash ;
 int free_dashboard (int ) ;
 int free_holder_by_module (int *,scalar_t__) ;
 TYPE_1__ gscroll ;
 int holder ;
 int load_ip_agent_list () ;
 int reset_scroll_offsets (TYPE_1__*) ;

__attribute__((used)) static void
expand_current_module (void)
{
  if (gscroll.expanded && gscroll.current == HOSTS) {
    load_ip_agent_list ();
    return;
  }


  if (gscroll.expanded)
    return;

  reset_scroll_offsets (&gscroll);
  gscroll.expanded = 1;

  free_holder_by_module (&holder, gscroll.current);
  free_dashboard (dash);
  allocate_holder_by_module (gscroll.current);
  allocate_data ();
}
