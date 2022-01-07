
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int color_scheme; } ;


 int MONOCHROME ;
 int MONOKAI ;
 int STD_GREEN ;
 TYPE_1__ conf ;
 int free_color_lists () ;
 int init_colors (int) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static void
scheme_chosen (const char *name)
{
  int force = 0;

  free_color_lists ();
  if (strcmp ("Green", name) == 0) {
    conf.color_scheme = STD_GREEN;
    force = 1;
  } else if (strcmp ("Monochrome", name) == 0) {
    conf.color_scheme = MONOCHROME;
    force = 1;
  } else if (strcmp ("Monokai", name) == 0) {
    conf.color_scheme = MONOKAI;
    force = 1;
  } else if (strcmp ("Custom Scheme", name) == 0) {
    force = 0;
  }
  init_colors (force);
}
