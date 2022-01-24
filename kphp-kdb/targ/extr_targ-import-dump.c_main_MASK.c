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
 int Args_per_line ; 
 scalar_t__ GA ; 
 scalar_t__ GB ; 
 scalar_t__ GC ; 
 scalar_t__ GT ; 
 int Gc ; 
 int Gd ; 
 int /*<<< orphan*/  MAX_CHARS ; 
 int MAX_GID ; 
 int MAX_GROUPS ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  TARG_SCHEMA_V1 ; 
#define  TF_ADDRESSES 137 
#define  TF_EDUCATION 136 
#define  TF_GROUPSHORT 135 
#define  TF_MATCHES 134 
#define  TF_MEMEXTRA 133 
#define  TF_MEMGROUPS 132 
#define  TF_MEMLITE 131 
#define  TF_MEMSHORT 130 
#define  TF_MILITARY 129 
#define  TF_NAMES 128 
 int TS ; 
 int /*<<< orphan*/  Tc ; 
 int Tw ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC11 (char*) ; 
 int FUNC12 (int,char**,char*) ; 
 char* groups_fname ; 
 char* groups_fname2 ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int mp_END ; 
 int ms_END ; 
 scalar_t__ FUNC15 (char*,int,...) ; 
 char* optarg ; 
 int optind ; 
 int output_format ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 char* progname ; 
 int FUNC27 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int split_mod ; 
 int split_rem ; 
 scalar_t__ src_fd ; 
 char* src_fname ; 
 int FUNC29 (char*,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int table_format ; 
 int targ_fd ; 
 char* targ_fname ; 
 int /*<<< orphan*/  FUNC31 () ; 
 char* username ; 
 scalar_t__ verbosity ; 
 int FUNC32 (int,scalar_t__,int) ; 

int FUNC33 (int argc, char *argv[]) {
  int i;
  progname = argv[0];
  FUNC13();
  while ((i = FUNC12 (argc, argv, "hvu:m:f:g:o:")) != -1) {
    switch (i) {
    case 'v':
      verbosity = 1;
      break;
    case 'h':
      FUNC31();
      return 2;
    case 'm':
      FUNC0 (FUNC29(optarg, "%d,%d", &split_rem, &split_mod) == 2);
      FUNC0 (split_mod > 0 && split_mod <= 1000 && split_rem >= 0 && split_rem < split_mod);
      break;
    case 'f':
      table_format = FUNC11(optarg);
      if (!table_format) {
	FUNC10 (stderr, "fatal: unsupported table dump format: %s\n", optarg);
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

  if (optind >= argc || optind + 2 < argc) {
    FUNC31();
    return 2;
  }

  src_fname = argv[optind];

  if (username && FUNC2 (username) < 0) {
    FUNC10 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    return 1;
  }

  if (groups_fname) {
    src_fd = FUNC15 (groups_fname, O_RDONLY);
    if (src_fd < 0) {
      FUNC10 (stderr, "cannot open %s: %m\n", groups_fname);
      return 1;
    }
    Gc = FUNC27 (src_fd, GT, MAX_GROUPS);
    if (verbosity > 0) {
      FUNC10 (stderr, "read %d bytes from %s\n", Gc, groups_fname);
    }
    FUNC0 (Gc >= 0 && Gc < MAX_GROUPS);
    FUNC3 (src_fd);
    src_fd = 0;
    GA = GT;
    GC = GB = GA + ((Gc + 3) & -4);
  }

  if (groups_fname2) {
    src_fd = FUNC15 (groups_fname2, O_RDONLY);
    if (src_fd < 0) {
      FUNC10 (stderr, "cannot open %s: %m\n", groups_fname2);
      return 1;
    }
    Gd = FUNC27 (src_fd, GB, GA + MAX_GROUPS - GB);
    if (verbosity > 0) {
      FUNC10 (stderr, "read %d bytes from %s\n", Gd, groups_fname2);
    }
    FUNC0 (Gd >= 0 && Gd < MAX_GROUPS);
    FUNC3 (src_fd);
    src_fd = 0;
    GC = GB + ((Gd + 3) & -4);
  }

  src_fd = FUNC15 (src_fname, O_RDONLY);
  if (src_fd < 0) {
    FUNC10 (stderr, "cannot open %s: %m\n", src_fname);
    return 1;
  }

  if (!table_format) {
    table_format = FUNC11 (FUNC9 (src_fname));
    if (!table_format) {
      FUNC10 (stderr, "fatal: cannot determine table type from filename %s\n", src_fname);
    }
  }

  if (optind + 1 < argc) {
    targ_fname = argv[optind+1];
    targ_fd = FUNC15 (targ_fname, O_WRONLY | O_APPEND | O_CREAT, 0644);
    if (targ_fd < 0) {
      FUNC10 (stderr, "cannot create %s: %m\n", targ_fname);
      return 1;
    }
  } else {
    targ_fname = "stdout";
    targ_fd = 1;
  }

  switch (table_format) {
  case TF_MEMLITE:
    Args_per_line = 27;
    FUNC30(TARG_SCHEMA_V1, "");
    while (FUNC28() > 0) {
      FUNC23();
    }
    break;
  case TF_EDUCATION:
    Args_per_line = 11;
    FUNC30(TARG_SCHEMA_V1, "");
    while (FUNC28() > 0) {
      FUNC18();
    }
    break;
  case TF_MEMSHORT:
    Args_per_line = ms_END;
    FUNC30(TARG_SCHEMA_V1, "");
    while (FUNC28() > 0) {
      FUNC24();
    }
    break;
  case TF_MEMEXTRA:
    Args_per_line = 3;
    if (output_format != 1) {
      FUNC30(TARG_SCHEMA_V1, "");
    }
    Tw = TS = FUNC14 (MAX_CHARS);
    FUNC0 (TS);
    while (FUNC28() > 0) {
      FUNC21();
    }
    if (Tc) { FUNC8(); }
    break;
  case TF_ADDRESSES:
    Args_per_line = 15;
    FUNC30(TARG_SCHEMA_V1, "");
    while (FUNC28() > 0) {
      FUNC17();
    }
    break;
  case TF_GROUPSHORT:
    Args_per_line = 3;
    while (FUNC28() > 0) {
      FUNC19();
    }
    if (output_format == 1 && Gc) {
      FUNC0 (FUNC32 (targ_fd, GT, Gc) == Gc);
    }
    break;
  case TF_MEMGROUPS:
    FUNC0 (Gc > 0);
    Args_per_line = 5;
    FUNC30(TARG_SCHEMA_V1, "");
    while (FUNC28() > 0) {
      FUNC22();
    }
    FUNC6 ();
    break;
  case TF_MILITARY:
    Args_per_line = 6;
    FUNC30(TARG_SCHEMA_V1, "");
    while (FUNC28() > 0) {
      FUNC25();
    }
    break;
  case TF_NAMES:
    Args_per_line = 2;
    Gc = MAX_GID * 4;
    while (FUNC28() > 0) {
      FUNC26();
    }
    if (output_format == 1 && Gc) {
      FUNC0 (FUNC32 (targ_fd, GT, Gc) == Gc);
    }
    break;
  case TF_MATCHES:
    Args_per_line = mp_END;
    FUNC30(TARG_SCHEMA_V1, "");
    while (FUNC28() > 0) {
      FUNC20();
    }
    break;
  default:
    FUNC10 (stderr, "unknown table type\n");
    FUNC4(1);
  }

  FUNC7();
  if (targ_fd != 1) {
    if (FUNC5(targ_fd) < 0) {
      FUNC10 (stderr, "error syncing %s: %m", targ_fname);
      FUNC4 (1);
    }
    FUNC3 (targ_fd);
  }

  if (verbosity > 0) {
    FUNC16();
  }

  return 0;
}