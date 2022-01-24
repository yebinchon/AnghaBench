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
 int /*<<< orphan*/  Args_per_line ; 
 int /*<<< orphan*/  F_WRLCK ; 
 scalar_t__ GA ; 
 scalar_t__ GB ; 
 scalar_t__ GC ; 
 scalar_t__ GS ; 
 scalar_t__ GT ; 
 int Gc ; 
 int Gd ; 
 int MAX_GROUPS ; 
 int /*<<< orphan*/  MONEY_SCHEMA_V1 ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
#define  TF_ACCOUNTS 129 
#define  TF_ACCTYPES 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  at_END ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*) ; 
 int FUNC11 (int,char**,char*) ; 
 char* groups_fname ; 
 char* groups_fname2 ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (char*,int,...) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  output_format ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int FUNC19 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ split_max ; 
 scalar_t__ split_min ; 
 int split_mod ; 
 scalar_t__ split_rem ; 
 scalar_t__ src_fd ; 
 char* src_fname ; 
 int FUNC21 (char*,char*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int stdout_mode ; 
 int table_format ; 
 int targ_fd ; 
 char* targ_fname ; 
 int /*<<< orphan*/  FUNC23 () ; 
 char* username ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC24 () ; 

int FUNC25 (int argc, char *argv[]) {
  int i;
  progname = argv[0];
  while ((i = FUNC11 (argc, argv, "hvu:m:f:g:o:")) != -1) {
    switch (i) {
    case 'v':
      verbosity++;
      break;
    case 'h':
      FUNC23();
      return 2;
    case 'm':
      FUNC0 (FUNC21(optarg, "%d,%d", &split_rem, &split_mod) == 2);
      FUNC0 (split_mod > 0 && split_mod <= 1000 && split_rem >= 0 && split_rem < split_mod);
      break;
    case 'f':
      table_format = FUNC10(optarg);
      if (!table_format) {
	FUNC7 (stderr, "fatal: unsupported table dump format: %s\n", optarg);
	return 2;
      }
      break;
    case 'o':
      output_format = FUNC1 (optarg);
      break;
    case 'g':
      if (groups_fname) {
        groups_fname2 = optarg;
      } else {
        groups_fname = optarg;
      }
      break;
    case 'u':
      username = optarg;
      break;
    }
  }

  split_min = split_rem;
  split_max = split_rem + 1;

  if (optind >= argc || optind + 2 < argc) {
    FUNC23();
    return 2;
  }

  src_fname = argv[optind];

  if (username && FUNC2 (username) < 0) {
    FUNC7 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    return 1;
  }

  if (groups_fname) {
    src_fd = FUNC15 (groups_fname, O_RDONLY);
    if (src_fd < 0) {
      FUNC7 (stderr, "cannot open %s: %m\n", groups_fname);
      return 1;
    }
    Gc = FUNC19 (src_fd, GT, MAX_GROUPS);
    if (verbosity > 0) {
      FUNC7 (stderr, "read %d bytes from %s\n", Gc, groups_fname);
    }
    FUNC0 (Gc >= 0 && Gc < MAX_GROUPS);
    FUNC3 (src_fd);
    src_fd = 0;
    GA = GT;
    GS = GC = GB = GA + ((Gc + 3) & -4);
  }

  if (groups_fname2) {
    src_fd = FUNC15 (groups_fname2, O_RDONLY);
    if (src_fd < 0) {
      FUNC7 (stderr, "cannot open %s: %m\n", groups_fname2);
      return 1;
    }
    Gd = FUNC19 (src_fd, GB, GA + MAX_GROUPS - GB);
    if (verbosity > 0) {
      FUNC7 (stderr, "read %d bytes from %s\n", Gd, groups_fname2);
    }
    FUNC0 (Gd >= 0 && Gd < MAX_GROUPS);
    FUNC3 (src_fd);
    src_fd = 0;
    GS = GC = GB + ((Gd + 3) & -4);
  }

  src_fd = FUNC15 (src_fname, O_RDONLY);
  if (src_fd < 0) {
    FUNC7 (stderr, "cannot open %s: %m\n", src_fname);
    return 1;
  }

  if (!table_format) {
    table_format = FUNC10 (FUNC6 (src_fname));
    if (!table_format) {
      FUNC7 (stderr, "fatal: cannot determine table type from filename %s\n", src_fname);
    }
  }

  if (optind + 1 < argc) {
    targ_fname = argv[optind+1];
    targ_fd = FUNC15 (targ_fname, O_RDWR);
    if (targ_fd >= 0) {
      FUNC0 (FUNC13 (targ_fd, F_WRLCK) > 0);
      if (FUNC12 (targ_fd) < 0) {
        FUNC7 (stderr, "fatal: bad binlog headers of %s\n", targ_fname);
      }
      FUNC14 (targ_fd, 0, SEEK_END);
    } else {
      targ_fd = FUNC15 (targ_fname, O_WRONLY | O_CREAT | O_EXCL, 0644);
      if (targ_fd < 0) {
        FUNC7 (stderr, "cannot create %s: %m\n", targ_fname);
        return 1;
      }
      FUNC0 (FUNC13 (targ_fd, F_WRLCK) > 0);
      FUNC9 (targ_fd, 0);
      FUNC14 (targ_fd, 0, SEEK_SET);
    }
  } else {
    targ_fname = "stdout";
    targ_fd = 1;
    stdout_mode = 1;
  }

  FUNC18 ();

  switch (table_format) {
  case TF_ACCTYPES:
    FUNC22(MONEY_SCHEMA_V1, "money");
    Args_per_line = at_END;
    while (FUNC20() > 0) {
      FUNC17();
    }
    break;
  case TF_ACCOUNTS:
  default:
    FUNC7 (stderr, "unknown table type\n");
    FUNC4(1);
  }

  FUNC5();
  if (targ_fd != 1) {
    FUNC24 ();
    if (FUNC8(targ_fd) < 0) {
      FUNC7 (stderr, "error syncing %s: %m", targ_fname);
      FUNC4 (1);
    }
    FUNC3 (targ_fd);
  }

  if (verbosity > 0) {
    FUNC16();
  }

  return 0;
}