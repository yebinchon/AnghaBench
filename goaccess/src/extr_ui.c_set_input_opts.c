
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mouse_support; } ;


 int BUTTON1_CLICKED ;
 scalar_t__ ERR ;
 int FALSE ;
 int LOG_DEBUG (char*) ;
 int TRUE ;
 int clear () ;
 TYPE_1__ conf ;
 scalar_t__ curs_set (int ) ;
 int errno ;
 int halfdelay (int) ;
 int initscr () ;
 int intrflush (int ,int ) ;
 int keypad (int ,int ) ;
 int mousemask (int ,int *) ;
 int noecho () ;
 int nonl () ;
 int stdscr ;
 int strerror (int ) ;

void
set_input_opts (void)
{
  initscr ();
  clear ();
  noecho ();
  halfdelay (10);
  nonl ();
  intrflush (stdscr, FALSE);
  keypad (stdscr, TRUE);
  if (curs_set (0) == ERR)
    LOG_DEBUG (("Unable to change cursor: %s\n", strerror (errno)));

  if (conf.mouse_support)
    mousemask (BUTTON1_CLICKED, ((void*)0));
}
