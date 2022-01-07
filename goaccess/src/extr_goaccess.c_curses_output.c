
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int skip_term_resolver; } ;


 int allocate_data () ;
 TYPE_1__ conf ;
 int gdns_thread_create () ;
 int get_keys () ;
 int render_screens () ;

__attribute__((used)) static void
curses_output (void)
{
  allocate_data ();
  if (!conf.skip_term_resolver)
    gdns_thread_create ();

  render_screens ();

  get_keys ();
}
