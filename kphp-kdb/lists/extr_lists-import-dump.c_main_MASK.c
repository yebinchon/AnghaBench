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
 scalar_t__ GA ; 
 scalar_t__ GB ; 
 scalar_t__ GC ; 
 scalar_t__ GS ; 
 scalar_t__ GT ; 
 int Gc ; 
 int Gd ; 
 int /*<<< orphan*/  LISTS_SCHEMA_CUR ; 
 int /*<<< orphan*/  LISTS_SCHEMA_V1 ; 
 int /*<<< orphan*/  LISTS_SCHEMA_V3 ; 
 int MAX_GROUPS ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_WRONLY ; 
#define  TF_APP_FANS 145 
#define  TF_APP_FANS_NOTIFY 144 
#define  TF_APP_FANS_SETTINGS 143 
#define  TF_BANLIST 142 
#define  TF_BANLISTED 141 
#define  TF_BLACKLIST 140 
#define  TF_BLACKLISTED 139 
#define  TF_FAMILY 138 
#define  TF_FAN_APPS 137 
#define  TF_FAN_APPS_BALANCE 136 
#define  TF_FAN_APPS_NOTIFY 135 
#define  TF_FAN_APPS_SETTINGS 134 
#define  TF_GROUPS_SHORT 133 
#define  TF_GROUP_MEMBERS 132 
#define  TF_MEMBER_GROUPS 131 
#define  TF_PHOTO_REV 130 
#define  TF_WIDGET_COMMENTS 129 
#define  TF_WIDGET_VOTES 128 
 int /*<<< orphan*/  af_END ; 
 int allow_negative ; 
 int /*<<< orphan*/  an_END ; 
 int /*<<< orphan*/  as_END ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  ba_END ; 
 int /*<<< orphan*/  bl_END ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (char*) ; 
 int FUNC10 (int,char**,char*) ; 
 int /*<<< orphan*/  gm_END ; 
 char* groups_fname ; 
 char* groups_fname2 ; 
 int /*<<< orphan*/  gs_END ; 
 int /*<<< orphan*/  mg_END ; 
 scalar_t__ FUNC11 (char*,int,...) ; 
 char* optarg ; 
 int optind ; 
 int output_format ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  pr_END ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
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
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 () ; 
 char* progname ; 
 int FUNC30 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int split_mod ; 
 int split_rem ; 
 scalar_t__ src_fd ; 
 char* src_fname ; 
 int FUNC33 (char*,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int table_format ; 
 int targ_fd ; 
 char* targ_fname ; 
 int /*<<< orphan*/  FUNC35 () ; 
 char* username ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  wc_END ; 
 int FUNC36 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  wv_END ; 

int FUNC37 (int argc, char *argv[]) {
  int i;
  FUNC32();
  progname = argv[0];
  while ((i = FUNC10 (argc, argv, "hvnu:m:f:g:o:")) != -1) {
    switch (i) {
    case 'v':
      verbosity++;
      break;
    case 'h':
      FUNC35();
      return 2;
    case 'n':
      allow_negative = 1;
      break;
    case 'm':
      FUNC0 (FUNC33(optarg, "%d,%d", &split_rem, &split_mod) == 2);
      FUNC0 (split_mod > 0 && split_mod <= 1000 && split_rem >= 0 && split_rem < split_mod);
      break;
    case 'f':
      table_format = FUNC9(optarg);
      if (!table_format) {
	FUNC8 (stderr, "fatal: unsupported table dump format: %s\n", optarg);
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
    FUNC35();
    return 2;
  }

  src_fname = argv[optind];

  if (username && FUNC2 (username) < 0) {
    FUNC8 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    return 1;
  }

  if (groups_fname) {
    src_fd = FUNC11 (groups_fname, O_RDONLY);
    if (src_fd < 0) {
      FUNC8 (stderr, "cannot open %s: %m\n", groups_fname);
      return 1;
    }
    Gc = FUNC30 (src_fd, GT, MAX_GROUPS);
    if (verbosity > 0) {
      FUNC8 (stderr, "read %d bytes from %s\n", Gc, groups_fname);
    }
    FUNC0 (Gc >= 0 && Gc < MAX_GROUPS);
    FUNC3 (src_fd);
    src_fd = 0;
    GA = GT;
    GS = GC = GB = GA + ((Gc + 3) & -4);
  }

  if (groups_fname2) {
    src_fd = FUNC11 (groups_fname2, O_RDONLY);
    if (src_fd < 0) {
      FUNC8 (stderr, "cannot open %s: %m\n", groups_fname2);
      return 1;
    }
    Gd = FUNC30 (src_fd, GB, GA + MAX_GROUPS - GB);
    if (verbosity > 0) {
      FUNC8 (stderr, "read %d bytes from %s\n", Gd, groups_fname2);
    }
    FUNC0 (Gd >= 0 && Gd < MAX_GROUPS);
    FUNC3 (src_fd);
    src_fd = 0;
    GS = GC = GB + ((Gd + 3) & -4);
  }

  src_fd = FUNC11 (src_fname, O_RDONLY);
  if (src_fd < 0) {
    FUNC8 (stderr, "cannot open %s: %m\n", src_fname);
    return 1;
  }

  if (!table_format) {
    table_format = FUNC9 (FUNC7 (src_fname));
    if (!table_format) {
      FUNC8 (stderr, "fatal: cannot determine table type from filename %s\n", src_fname);
    }
  }

  if (optind + 1 < argc) {
    targ_fname = argv[optind+1];
    targ_fd = FUNC11 (targ_fname, O_WRONLY | O_APPEND | O_CREAT, 0644);
    if (targ_fd < 0) {
      FUNC8 (stderr, "cannot create %s: %m\n", targ_fname);
      return 1;
    }
  } else {
    targ_fname = "stdout";
    targ_fd = 1;
  }

  switch (table_format) {
  case TF_GROUP_MEMBERS:
    FUNC0 (split_mod);
    FUNC0 (Gc > 0);
    Args_per_line = gm_END;
    FUNC34(LISTS_SCHEMA_V1, "");
    while (FUNC31() > 0) {
      FUNC24();
    }
    break;
  case TF_MEMBER_GROUPS:
    FUNC0 (split_mod);
    FUNC0 (Gc > 0);
    Args_per_line = mg_END;
    FUNC34(LISTS_SCHEMA_V1, "");
    while (FUNC31() > 0) {
      FUNC26();
    }
    break;
  case TF_GROUPS_SHORT:
    Args_per_line = gs_END;
    while (FUNC31() > 0) {
      FUNC25();
    }
    if (output_format == 1 && Gc) {
      FUNC0 (FUNC36 (targ_fd, GT, Gc) == Gc);
    }
    break;
  case TF_FAN_APPS:
    FUNC0 (split_mod);
    allow_negative = 1;
    Args_per_line = af_END;
    FUNC34(LISTS_SCHEMA_V1, "member_apps");
    while (FUNC31() > 0) {
      FUNC22();
    }
    break;
  case TF_APP_FANS:
    FUNC0 (split_mod);
    Args_per_line = af_END;
    FUNC34(LISTS_SCHEMA_V1, "app_members");
    while (FUNC31() > 0) {
      FUNC14();
    }
    break;
  case TF_FAN_APPS_SETTINGS:
    FUNC0 (split_mod);
    Args_per_line = as_END;
    while (FUNC31() > 0) {
      FUNC23();
    }
    break;
  case TF_APP_FANS_SETTINGS:
    FUNC0 (split_mod);
    Args_per_line = as_END;
    while (FUNC31() > 0) {
      FUNC15();
    }
    break;
  case TF_FAN_APPS_NOTIFY:
    FUNC0 (split_mod);
    Args_per_line = an_END;
    while (FUNC31() > 0) {
      FUNC21();
    }
    break;
  case TF_APP_FANS_NOTIFY:
    FUNC0 (split_mod);
    Args_per_line = an_END;
    while (FUNC31() > 0) {
      FUNC13();
    }
    break;
  case TF_FAN_APPS_BALANCE:
    FUNC0 (split_mod);
    FUNC34(LISTS_SCHEMA_V1, "member_apps_balance");
    Args_per_line = as_END;
    while (FUNC31() > 0) {
      FUNC20();
    }
    break;
  case TF_FAMILY:
    FUNC0 (split_mod);
    FUNC34(LISTS_SCHEMA_CUR, "family");
    break;
  case TF_WIDGET_COMMENTS:
    FUNC0 (split_mod);
    Args_per_line = wc_END;
    FUNC34 (LISTS_SCHEMA_V3, "\x01\x02\x02\x01");
    while (FUNC31 () > 0) {
      FUNC28 ();
    }
    break;
  case TF_WIDGET_VOTES:
    FUNC0 (split_mod);
    Args_per_line = wv_END;
    FUNC34 (LISTS_SCHEMA_V1, "");
    while (FUNC31 () > 0) {
      FUNC29 ();
    }
    break;
  case TF_BLACKLIST:
    FUNC0 (split_mod);
    Args_per_line = bl_END;
    FUNC34 (LISTS_SCHEMA_V1, "");
    while (FUNC31 () > 0) {
      FUNC18 ();
    }
    break;
  case TF_BLACKLISTED:
    FUNC0 (split_mod);
    Args_per_line = bl_END;
    FUNC34 (LISTS_SCHEMA_V1, "");
    while (FUNC31 () > 0) {
      FUNC19 ();
    }
    break;
  case TF_BANLIST:
    FUNC0 (split_mod);
    Args_per_line = ba_END;
    //    start_binlog (LISTS_SCHEMA_V1, "");
    while (FUNC31 () > 0) {
      FUNC16 ();
    }
    break;
  case TF_BANLISTED:
    FUNC0 (split_mod);
    Args_per_line = ba_END;
    //    start_binlog (LISTS_SCHEMA_V1, "");
    while (FUNC31 () > 0) {
      FUNC17 ();
    }
    break;
  case TF_PHOTO_REV:
    FUNC0 (split_mod);
    Args_per_line = pr_END;
    FUNC34 (LISTS_SCHEMA_V3, "\x01\x03\x02\x01");
    while (FUNC31 () > 0) {
      FUNC27 ();
    }
    break;
  default:
    FUNC8 (stderr, "unknown table type\n");
    FUNC4(1);
  }

  FUNC6();
  if (targ_fd != 1) {
    if (FUNC5(targ_fd) < 0) {
      FUNC8 (stderr, "error syncing %s: %m", targ_fname);
      FUNC4 (1);
    }
    FUNC3 (targ_fd);
  }

  if (verbosity > 0) {
    FUNC12();
  }

  return 0;
}