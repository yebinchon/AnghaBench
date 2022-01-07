
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_10__ {scalar_t__ no_progress; } ;
struct TYPE_9__ {TYPE_1__* pair; } ;
struct TYPE_8__ {scalar_t__ state; long long* processed; int mutex; int win; int spin_x; int y; TYPE_3__* (* color ) () ;int w; int x; scalar_t__ curses; int label; } ;
struct TYPE_7__ {int idx; } ;
typedef TYPE_2__ GSpinner ;
typedef TYPE_3__ GColors ;


 int COLOR_PAIR (int ) ;
 int LC_NUMERIC ;
 char* SPIN_FMT ;
 char* SPIN_FMTM ;
 int SPIN_LBL ;
 int SPIN_UPDATE_INTERVAL ;
 scalar_t__ SPN_END ;
 TYPE_6__ conf ;
 int draw_header (int ,char*,char*,int ,int ,int ,TYPE_3__* (*) ()) ;
 int fprintf (int ,char*,...) ;
 int mvwaddch (int ,int ,int ,char const) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int setlocale (int ,char*) ;
 int snprintf (char*,int,char*,int ,...) ;
 int stderr ;
 TYPE_3__* stub1 () ;
 scalar_t__ time (scalar_t__*) ;
 int usleep (int ) ;
 int wattroff (int ,int ) ;
 int wattron (int ,int ) ;
 int wrefresh (int ) ;

__attribute__((used)) static void
ui_spinner (void *ptr_data)
{
  GSpinner *sp = (GSpinner *) ptr_data;
  GColors *color = ((void*)0);

  static char const spin_chars[] = "/-\\|";
  char buf[SPIN_LBL];
  int i = 0;
  long long tdiff = 0, psec = 0;
  time_t begin;

  if (sp->curses)
    color = (*sp->color) ();

  time (&begin);
  while (1) {
    pthread_mutex_lock (&sp->mutex);
    if (sp->state == SPN_END) {
      if (!sp->curses && !conf.no_progress)
        fprintf(stderr, "\n");

      break;
    }

    setlocale (LC_NUMERIC, "");
    if (conf.no_progress) {
      snprintf (buf, sizeof buf, SPIN_FMT, sp->label);
    } else {
      tdiff = (long long) (time (((void*)0)) - begin);
      psec = tdiff >= 1 ? *(sp->processed) / tdiff : 0;
      snprintf (buf, sizeof buf, SPIN_FMTM, sp->label, *(sp->processed), psec);
    }
    setlocale (LC_NUMERIC, "POSIX");

    if (sp->curses) {

      draw_header (sp->win, buf, " %s", sp->y, sp->x, sp->w, sp->color);

      wattron (sp->win, COLOR_PAIR (color->pair->idx));
      mvwaddch (sp->win, sp->y, sp->spin_x, spin_chars[i++ & 3]);
      wattroff (sp->win, COLOR_PAIR (color->pair->idx));
      wrefresh (sp->win);
    } else if (!conf.no_progress) {

      fprintf (stderr, "%s\r", buf);
    }

    pthread_mutex_unlock (&sp->mutex);
    usleep (SPIN_UPDATE_INTERVAL);
  }
}
