
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int current; } ;
struct TYPE_8__ {int * processed; } ;
struct TYPE_7__ {int processed; } ;


 TYPE_1__* glog ;
 TYPE_5__ gscroll ;
 int init_geoip () ;
 TYPE_1__* init_log () ;
 int init_modules () ;
 TYPE_2__* new_gspinner () ;
 int parse_browsers_file () ;
 TYPE_2__* parsing_spinner ;
 int set_io () ;
 int set_locale () ;
 int set_signal_data (TYPE_1__*) ;

__attribute__((used)) static void
initializer (void)
{

  gscroll.current = init_modules ();

  set_locale ();

  parse_browsers_file ();






  glog = init_log ();

  set_io ();
  set_signal_data (glog);


  parsing_spinner = new_gspinner ();
  parsing_spinner->processed = &glog->processed;
}
