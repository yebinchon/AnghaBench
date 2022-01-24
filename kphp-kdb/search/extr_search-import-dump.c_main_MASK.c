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
 int /*<<< orphan*/  Map ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SEARCH_SCHEMA_V1 ; 
#define  TF_APPS 138 
#define  TF_AUDIO 137 
#define  TF_BLOG_POSTS 136 
#define  TF_EVENTS 135 
#define  TF_GROUPS 134 
#define  TF_MARKET_ITEMS 133 
#define  TF_MEMLITE 132 
#define  TF_MINIFEED 131 
#define  TF_QUESTIONS 130 
#define  TF_TOPICS 129 
#define  TF_VIDEO 128 
 int /*<<< orphan*/  ap_END ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  au_END ; 
 int /*<<< orphan*/  bp_END ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC9 (char*) ; 
 int FUNC10 (int,char**,char*) ; 
 int /*<<< orphan*/  gr_END ; 
 char* groups_fname ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ map_changes ; 
 int map_fd ; 
 int map_size ; 
 int /*<<< orphan*/  mf_END ; 
 int /*<<< orphan*/  mi_END ; 
 int /*<<< orphan*/  ml_END ; 
 void* FUNC12 (char*,int,...) ; 
 char* optarg ; 
 int optind ; 
 int /*<<< orphan*/  output_format ; 
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
 char* progname ; 
 int /*<<< orphan*/  qu_END ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int split_mod ; 
 int split_rem ; 
 scalar_t__ src_fd ; 
 char* src_fname ; 
 int FUNC26 (char*,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int table_format ; 
 int targ_fd ; 
 char* targ_fname ; 
 int /*<<< orphan*/  to_END ; 
 int /*<<< orphan*/  FUNC28 () ; 
 char* username ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  vi_END ; 
 int FUNC29 (int,int /*<<< orphan*/ ,int) ; 

int FUNC30 (int argc, char *argv[]) {
  int i;
  progname = argv[0];
  while ((i = FUNC10 (argc, argv, "hvu:m:f:g:o:")) != -1) {
    switch (i) {
    case 'v':
      verbosity = 1;
      break;
    case 'h':
      FUNC28();
      return 2;
    case 'm':
      FUNC0 (FUNC26(optarg, "%d,%d", &split_rem, &split_mod) == 2);
      FUNC0 (split_mod > 0 && split_mod <= 1000 && split_rem >= 0 && split_rem < split_mod);
      break;
    case 'f':
      table_format = FUNC9(optarg);
      if (!table_format) {
	FUNC8 (stderr, "fatal: unsupported table dump format: %s\n", optarg);
	return 2;
      }
      break;
    case 'g':
      groups_fname = optarg;
      break;
    case 'o':
      output_format = FUNC1 (optarg);
      break;
    case 'u':
      username = optarg;
      break;
    }
  }

  if (optind >= argc || optind + 2 < argc) {
    FUNC28();
    return 2;
  }

  src_fname = argv[optind];

  if (username && FUNC2 (username) < 0) {
    FUNC8 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    return 1;
  }

  src_fd = FUNC12 (src_fname, O_RDONLY);
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
    targ_fd = FUNC12 (targ_fname, O_WRONLY | O_APPEND | O_CREAT, 0644);
    if (targ_fd < 0) {
      FUNC8 (stderr, "cannot create %s: %m\n", targ_fname);
      return 1;
    }
  } else {
    targ_fname = "stdout";
    targ_fd = 1;
  }

  switch (table_format) {
  case TF_AUDIO:
    Args_per_line = au_END;
    FUNC27(SEARCH_SCHEMA_V1, "audio_search");
    while (FUNC25() > 0) {
      FUNC15();
    }
    break;
  case TF_VIDEO:
    Args_per_line = vi_END;
    FUNC27(SEARCH_SCHEMA_V1, "video_search");
    while (FUNC25() > 0) {
      FUNC24();
    }
    break;
  case TF_APPS:
    Args_per_line = ap_END;
    FUNC27(SEARCH_SCHEMA_V1, "apps_search");
    while (FUNC25() > 0) {
      FUNC14();
    }
    break;
  case TF_GROUPS:
    Args_per_line = gr_END;
    FUNC27(SEARCH_SCHEMA_V1, "group_search");
    while (FUNC25() > 0) {
      FUNC18();
    }
    break;
  case TF_EVENTS:
    Args_per_line = gr_END;
    FUNC27(SEARCH_SCHEMA_V1, "event_search");
    while (FUNC25() > 0) {
      FUNC17();
    }
    break;
  case TF_BLOG_POSTS:
    Args_per_line = bp_END;
    FUNC27(SEARCH_SCHEMA_V1, "blog_posts_search");
    while (FUNC25() > 0) {
      FUNC16();
    }
    break;
  case TF_MEMLITE:
    Args_per_line = ml_END;
    FUNC27(SEARCH_SCHEMA_V1, "member_name_search");
    while (FUNC25() > 0) {
      FUNC20();
    }
    break;
  case TF_MARKET_ITEMS:
    Args_per_line = mi_END;
    FUNC27(SEARCH_SCHEMA_V1, "market_search");
    while (FUNC25() > 0) {
      FUNC19();
    }
    break;
  case TF_QUESTIONS:
    Args_per_line = qu_END;
    FUNC27(SEARCH_SCHEMA_V1, "question_search");
    while (FUNC25() > 0) {
      FUNC22();
    }
    break;
  case TF_TOPICS:
    FUNC11 (1);
    Args_per_line = to_END;
    FUNC27(SEARCH_SCHEMA_V1, "topic_search");
    while (FUNC25() > 0) {
      FUNC23();
    }
    break;
  case TF_MINIFEED:
    Args_per_line = mf_END;
    FUNC27(SEARCH_SCHEMA_V1, "status_search");
    while (FUNC25() > 0) {
      FUNC21();
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

  if (map_size > 0 && map_changes > 0 && groups_fname) {
    map_fd = FUNC12 (groups_fname, O_WRONLY | O_CREAT | O_TRUNC, 0640);
    if (map_fd < 0) {
      FUNC8 (stderr, "cannot create map file %s: %m\n", groups_fname);
      FUNC4 (1);
    }
    FUNC0 (FUNC29 (map_fd, Map, map_size) == map_size);
    FUNC3 (map_fd);
    if (verbosity > 0) {
      FUNC8 (stderr, "%d bytes written to map file %s\n", map_size, groups_fname);
    }
  }

  if (verbosity > 0) {
    FUNC13();
  }

  return 0;
}