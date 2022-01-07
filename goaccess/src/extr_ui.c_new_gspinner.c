
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int no_progress; scalar_t__ load_from_disk; } ;
struct TYPE_5__ {char* label; int mutex; scalar_t__ curses; int state; } ;
typedef TYPE_1__ GSpinner ;


 int FATAL (char*) ;
 int SPN_RUN ;
 TYPE_4__ conf ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 TYPE_1__* xcalloc (int,int) ;

GSpinner *
new_gspinner (void)
{
  GSpinner *spinner;

  spinner = xcalloc (1, sizeof (GSpinner));
  spinner->label = "Parsing...";
  spinner->state = SPN_RUN;
  spinner->curses = 0;
  if (conf.load_from_disk)
    conf.no_progress = 1;

  if (pthread_mutex_init (&(spinner->mutex), ((void*)0)))
    FATAL ("Failed init thread mutex");

  return spinner;
}
