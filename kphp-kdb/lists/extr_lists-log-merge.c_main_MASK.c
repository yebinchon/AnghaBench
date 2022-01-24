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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ cutoff_ago ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC8 (int,char**,char*) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC10 (char*,int,...) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 char* progname ; 
 scalar_t__ rend ; 
 scalar_t__ rptr ; 
 int skip_timestamps ; 
 scalar_t__ src_fd ; 
 char* src_fname ; 
 int FUNC13 (char*,char*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ t_cutoff ; 
 int targ_fd ; 
 char* targ_fname ; 
 scalar_t__ targ_orig_size ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ undel_time_max ; 
 scalar_t__ undel_time_min ; 
 int /*<<< orphan*/  FUNC15 () ; 
 char* username ; 
 scalar_t__ verbosity ; 

int FUNC16 (int argc, char *argv[]) {
  int i;
  progname = argv[0];
  while ((i = FUNC8 (argc, argv, "hivt:u:U:")) != -1) {
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
    case 'i':
      skip_timestamps = 1;
      break;
    case 't':
      cutoff_ago = FUNC1 (optarg);
      break;
    case 'U':
      if (FUNC13 (optarg, "%d..%d", &undel_time_min, &undel_time_max) < 2 || undel_time_min >= undel_time_max || undel_time_min < 0) {
	FUNC15();
	return 2;
      }
      break;
    }
  }

  if (optind >= argc || optind + 2 < argc || (cutoff_ago <= 0 && !undel_time_min && !undel_time_max)) {
    FUNC15();
    return 2;
  }

  t_cutoff = (undel_time_min ? undel_time_min : FUNC14(0) - cutoff_ago);

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

  if (optind + 1 < argc) {
    targ_fname = argv[optind+1];
    targ_fd = FUNC10 (targ_fname, O_WRONLY | O_APPEND | O_CREAT, 0644);
    if (targ_fd < 0) {
      FUNC7 (stderr, "cannot create %s: %m\n", targ_fname);
      return 1;
    }
    targ_orig_size = FUNC9 (targ_fd, 0, SEEK_END);
    FUNC0 ((targ_orig_size > 0) ^ (undel_time_min > 0));
  } else {
    targ_fname = "stdout";
    targ_fd = 1;
  }

  while (FUNC12() >= 0) { }

  FUNC6();

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