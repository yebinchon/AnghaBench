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
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  WB ; 
 int /*<<< orphan*/  WRITE_BUFFER_SIZE ; 
 int addr_ext_size ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int curr_fd ; 
 char* curr_fname ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (int,char**,char*) ; 
 scalar_t__ FUNC9 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int mode ; 
 void* FUNC10 (char*,int,...) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ position ; 
 scalar_t__ FUNC12 () ; 
 char* progname ; 
 int FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ rend ; 
 scalar_t__ rptr ; 
 scalar_t__ src_fd ; 
 char* src_fname ; 
 int /*<<< orphan*/  stderr ; 
 int targ_fd ; 
 char* targ_fname ; 
 scalar_t__ targ_orig_size ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int time_offset ; 
 scalar_t__ time_threshold ; 
 int /*<<< orphan*/  FUNC15 () ; 
 char* username ; 
 scalar_t__ verbosity ; 
 int FUNC16 (int,int /*<<< orphan*/ ,int) ; 

int FUNC17 (int argc, char *argv[]) {
  int i;
  progname = argv[0];
  while ((i = FUNC8 (argc, argv, "hviu:t:")) != -1) {
    switch (i) {
    case 'v':
      verbosity = 1;
      break;
    case 'h':
      FUNC15();
      return 2;
    case 'u':
      username = optarg;
      break;
    case 't':
      time_offset = FUNC1 (optarg);
      break;
    case 'i':
      addr_ext_size = 29;
      break;
    }
  }

  if (optind >= argc || optind + 3 < argc) {
    FUNC15();
    return 2;
  }

  if (time_offset <= 0) {
    time_offset = 86400;
  }
  time_threshold = FUNC14(0) - time_offset;

  src_fname = argv[optind];

  if (username && FUNC2 (username) < 0) {
    FUNC7 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    return 1;
  }

  src_fd = FUNC10 (src_fname, O_RDONLY);
  if (src_fd < 0) {
    FUNC7 (stderr, "cannot open %s: %m\n", src_fname);
    return 1;
  }

  if (optind + 2 < argc) {
    curr_fname = argv[optind+2];
    curr_fd = FUNC10 (curr_fname, O_RDONLY);
    mode = 1;
    if (curr_fd < 0) {
      FUNC7 (stderr, "cannot open %s: %m\n", curr_fname);
      return 1;
    }
  }

  if (optind + 1 < argc) {
    targ_fname = argv[optind+1];
    targ_fd = FUNC10 (targ_fname, O_WRONLY | O_APPEND | O_CREAT, 0644);
    if (targ_fd < 0) {
      FUNC7 (stderr, "cannot create %s: %m\n", targ_fname);
      return 1;
    }
    targ_orig_size = FUNC9 (targ_fd, 0, SEEK_END);
    FUNC0 (targ_orig_size > 0);
  } else {
    targ_fname = "stdout";
    targ_fd = 1;
  }

  while (FUNC12() >= 0) { }

  FUNC6();

  if (mode == 2 && rend == rptr) {
    FUNC0 (position > 0);
    position += targ_orig_size;
    if (verbosity > 0) {
      FUNC7 (stderr, "copying from position %ld of file %s\n", position, curr_fname);
    }
    FUNC0 (FUNC9 (curr_fd, position, SEEK_SET) == position);
    while (1) {
      int r = FUNC13 (curr_fd, WB, WRITE_BUFFER_SIZE);
      if (r <= 0) { FUNC0 (!r); break; }
      int w = FUNC16 (targ_fd, WB, r);
      FUNC0 (w == r);
    }
    if (verbosity > 0) {
      FUNC7 (stderr, "transferred %ld bytes from %s\n", FUNC9(curr_fd, 0, SEEK_CUR) - position, curr_fname);
    }
  }

  if (targ_fd != 1) {
    if (FUNC5(targ_fd) < 0) {
      FUNC7 (stderr, "error syncing %s: %m", targ_fname);
      FUNC4 (1);
    }
    FUNC3 (targ_fd);
  }

  if (verbosity > 0) {
    FUNC11();
  }

  return rend > rptr ? 1 : 0;
}