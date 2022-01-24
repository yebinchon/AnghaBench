#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int O_APPEND ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC7 (int,char**,char*) ; 
 int idx_fd ; 
 char* idx_fname ; 
 void* idx_size ; 
 int /*<<< orphan*/  FUNC8 (int,void*) ; 
 void* FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC10 (char*,int,...) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 char* progname ; 
 int rend ; 
 int rptr ; 
 scalar_t__ src_fd ; 
 char* src_fname ; 
 int /*<<< orphan*/  stderr ; 
 int targ_fd ; 
 char* targ_fname ; 
 scalar_t__ targ_orig_size ; 
 int /*<<< orphan*/  FUNC14 () ; 
 char* username ; 
 scalar_t__ verbosity ; 

int FUNC15 (int argc, char *argv[]) {
  int i;
  progname = argv[0];
  while ((i = FUNC7 (argc, argv, "hvu:")) != -1) {
    switch (i) {
    case 'v':
      verbosity = 1;
      break;
    case 'h':
      FUNC14();
      return 2;
    case 'u':
      username = optarg;
      break;
    }
  }

  if (optind + 1 >= argc || optind + 3 < argc) {
    FUNC14();
    return 2;
  }

  idx_fname = argv[optind];
  src_fname = argv[optind + 1];

  if (username && FUNC1 (username) < 0) {
    FUNC6 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    return 1;
  }

  idx_fd = FUNC10 (idx_fname, O_RDONLY);
  if (idx_fd < 0) {
    FUNC6 (stderr, "cannot open index %s: %m\n", idx_fname);
    return 1;
  }

  idx_size = FUNC9 (idx_fd, 0, SEEK_END);
  FUNC9 (idx_fd, 0, SEEK_SET);

  FUNC8 (idx_fd, idx_size);

  src_fd = FUNC10 (src_fname, O_RDONLY);
  if (src_fd < 0) {
    FUNC6 (stderr, "cannot open %s: %m\n", src_fname);
    return 1;
  }

  if (optind + 2 < argc) {
    targ_fname = argv[optind+2];
    targ_fd = FUNC10 (targ_fname, O_WRONLY | O_APPEND | O_CREAT, 0644);
    if (targ_fd < 0) {
      FUNC6 (stderr, "cannot create %s: %m\n", targ_fname);
      return 1;
    }
    targ_orig_size = FUNC9 (targ_fd, 0, SEEK_END);
    FUNC0 (targ_orig_size > 0);
  } else {
    targ_fname = "stdout";
    targ_fd = 1;
  }

  FUNC12 ();
  for (i = 0; i <= 2; i++) {
    if (rend - rptr >= 4096 && *((int *) rptr) == 0x0473664b) {
      rptr += 4096;
    }
  }

  while (FUNC13() >= 0) { }

  FUNC5();

  if (targ_fd != 1) {
    if (FUNC4(targ_fd) < 0) {
      FUNC6 (stderr, "error syncing %s: %m", targ_fname);
      FUNC3 (1);
    }
    FUNC2 (targ_fd);
  }

  if (verbosity > 0) {
    FUNC11();
  }

  return rend > rptr ? 1 : 0;
}