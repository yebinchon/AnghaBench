
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ load_from_disk; } ;


 TYPE_1__ conf ;
 int init_storage () ;
 int set_general_stats () ;
 int set_spec_date_format () ;
 int verify_panels () ;

__attribute__((used)) static void
init_processing (void)
{

  verify_panels ();

  init_storage ();
  if (conf.load_from_disk)
    set_general_stats ();
  set_spec_date_format ();
}
