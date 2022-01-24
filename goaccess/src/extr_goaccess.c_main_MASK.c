#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ output_stdout; scalar_t__ process_and_exit; scalar_t__ stop_processing; } ;
struct TYPE_4__ {int /*<<< orphan*/  processed; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_3__ conf ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  end_proc ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* glog ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,char**) ; 
 int /*<<< orphan*/  FUNC9 (int*,char***) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  start_proc ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int,char**) ; 

int
FUNC19 (int argc, char **argv)
{
  int quit = 0, ret = 0;

  FUNC1 ();
  FUNC15 ();

  /* command line/config options */
  FUNC18 (argc, argv);
  FUNC9 (&argc, &argv);
  FUNC8 (argc, argv);

  FUNC7 ();

  /* ignore outputting, process only */
  if (conf.process_and_exit) {
  }
  /* set stdout */
  else if (conf.output_stdout) {
    FUNC14 ();
  }
  /* set curses */
  else {
    FUNC13 (&quit);
  }

  /* no log/date/time format set */
  if (quit)
    goto clean;

  FUNC6 ();
  /* main processing event */
  FUNC17 (&start_proc);
  if ((ret = FUNC11 (&glog, NULL, 0))) {
    FUNC4 ();
    goto clean;
  }
  if (conf.stop_processing)
    goto clean;
  glog->offset = glog->processed;

  /* init reverse lookup thread */
  FUNC5 ();
  FUNC10 ();
  FUNC0 ();

  FUNC4 ();
  FUNC17 (&end_proc);

  /* ignore outputting, process only */
  if (conf.process_and_exit) {
#ifdef TCB_BTREE
    set_accumulated_time ();
#endif
  }
  /* stdout */
  else if (conf.output_stdout) {
    FUNC16 ();
  }
  /* curses */
  else {
    FUNC3 ();
  }

  /* clean */
clean:
  FUNC2(ret);

  return ret ? EXIT_FAILURE : EXIT_SUCCESS;
}