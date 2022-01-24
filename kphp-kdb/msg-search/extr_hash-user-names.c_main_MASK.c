#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  user_id; int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ entry_t ;

/* Variables and functions */
 scalar_t__ BUFFSIZE ; 
 scalar_t__* Buff ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__* fd ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* progname ; 
 scalar_t__* rptr ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tot_users ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int verbose ; 
 scalar_t__* wptr ; 

int FUNC11 (int argc, char *argv[]) {
  int i;
  entry_t *E;
  progname = argv[0];
  while ((i = FUNC4 (argc, argv, "hv")) != -1) {
    switch (i) {
    case 'v':
      verbose = 1;
      break;
    case 'h':
      FUNC10();
      return 2;
    }
  }
  if (argc <= optind) {
    FUNC10();
    return 2;
  }

  FUNC5 ();

  rptr[2] = wptr[2] = Buff[2];

  while (optind < argc) {
    fd[0] = FUNC7 (argv[optind], O_RDONLY);
    if (fd[0] < 0) {
      FUNC3 (stderr, "%s: cannot open() %s: %m\n", progname, argv[optind]);
      optind++;
      continue;
    }
    FUNC0 (fd[0] >= 0);
    rptr[0] = wptr[0] = Buff[0] + BUFFSIZE;

    while ((E = FUNC6(0)) != 0) {
      tot_users++;
      FUNC9 (E->text, E->user_id);
    }

    FUNC1 (fd[0]);
    optind++;
  }

  FUNC2();

  if (verbose) {
    FUNC8();
  }
                                      
  return 0;
}