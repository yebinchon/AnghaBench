#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int no_color; scalar_t__ read_stdin; scalar_t__ load_conf_dlg; int /*<<< orphan*/  color_scheme; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  NO_COLOR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  glog ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  header_win ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  main_win ; 
 int /*<<< orphan*/  parsing_spinner ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 char* FUNC12 () ; 

__attribute__((used)) static void
FUNC13 (int *quit)
{
  const char *err_log = NULL;

  FUNC9 ();
  FUNC8 ();
  if (conf.no_color || FUNC2 () == FALSE) {
    conf.color_scheme = NO_COLOR;
    conf.no_color = 1;
  } else {
    FUNC10 ();
  }
  FUNC3 (0);
  FUNC4 (&header_win, &main_win);
  FUNC7 (parsing_spinner);

  /* Display configuration dialog if missing formats and not piping data in */
  if (!conf.read_stdin && (FUNC12 () || conf.load_conf_dlg)) {
    FUNC5 ();
    *quit = FUNC6 (glog, parsing_spinner);
    FUNC1 ();
  }
  /* Piping data in without log/date/time format */
  else if (conf.read_stdin && (err_log = FUNC12 ())) {
    FUNC0 ("%s", err_log);
  }
  /* straight parsing */
  else {
    FUNC11 (parsing_spinner);
  }
}