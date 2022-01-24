#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_10__ {scalar_t__ no_progress; } ;
struct TYPE_9__ {TYPE_1__* pair; } ;
struct TYPE_8__ {scalar_t__ state; long long* processed; int /*<<< orphan*/  mutex; int /*<<< orphan*/  win; int /*<<< orphan*/  spin_x; int /*<<< orphan*/  y; TYPE_3__* (* color ) () ;int /*<<< orphan*/  w; int /*<<< orphan*/  x; scalar_t__ curses; int /*<<< orphan*/  label; } ;
struct TYPE_7__ {int /*<<< orphan*/  idx; } ;
typedef  TYPE_2__ GSpinner ;
typedef  TYPE_3__ GColors ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LC_NUMERIC ; 
 char* SPIN_FMT ; 
 char* SPIN_FMTM ; 
 int SPIN_LBL ; 
 int /*<<< orphan*/  SPIN_UPDATE_INTERVAL ; 
 scalar_t__ SPN_END ; 
 TYPE_6__ conf ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__* (*) ()) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_3__* FUNC8 () ; 
 scalar_t__ FUNC9 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14 (void *ptr_data)
{
  GSpinner *sp = (GSpinner *) ptr_data;
  GColors *color = NULL;

  static char const spin_chars[] = "/-\\|";
  char buf[SPIN_LBL];
  int i = 0;
  long long tdiff = 0, psec = 0;
  time_t begin;

  if (sp->curses)
    color = (*sp->color) ();

  FUNC9 (&begin);
  while (1) {
    FUNC4 (&sp->mutex);
    if (sp->state == SPN_END) {
      if (!sp->curses && !conf.no_progress)
        FUNC2(stderr, "\n");

      break;
    }

    FUNC6 (LC_NUMERIC, "");
    if (conf.no_progress) {
      FUNC7 (buf, sizeof buf, SPIN_FMT, sp->label);
    } else {
      tdiff = (long long) (FUNC9 (NULL) - begin);
      psec = tdiff >= 1 ? *(sp->processed) / tdiff : 0;
      FUNC7 (buf, sizeof buf, SPIN_FMTM, sp->label, *(sp->processed), psec);
    }
    FUNC6 (LC_NUMERIC, "POSIX");

    if (sp->curses) {
      /* CURSES */
      FUNC1 (sp->win, buf, " %s", sp->y, sp->x, sp->w, sp->color);
      /* caret */
      FUNC12 (sp->win, FUNC0 (color->pair->idx));
      FUNC3 (sp->win, sp->y, sp->spin_x, spin_chars[i++ & 3]);
      FUNC11 (sp->win, FUNC0 (color->pair->idx));
      FUNC13 (sp->win);
    } else if (!conf.no_progress) {
      /* STDOUT */
      FUNC2 (stderr, "%s\r", buf);
    }

    FUNC5 (&sp->mutex);
    FUNC10 (SPIN_UPDATE_INTERVAL);
  }
}