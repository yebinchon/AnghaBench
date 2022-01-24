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
 int /*<<< orphan*/  Binlog ; 
 int FALSE ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* binlogname ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,int,long long,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 scalar_t__ log_pos ; 
 scalar_t__ log_readto_pos ; 
 long long max_binlog_size ; 
 int /*<<< orphan*/  FUNC12 () ; 
 void* optarg ; 
 int optind ; 
 char* progname ; 
 int records_processed ; 
 int records_read ; 
 int /*<<< orphan*/  sigint_handler ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigterm_handler ; 
 int FUNC14 (void*,char*,long long*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC16 () ; 
 void* username ; 
 int verbosity ; 

int FUNC17 (int argc, char **argv) {
  progname = argv[0];

  int i;
  long long x = 0;
  char c = 0;
  bool binlog_file_need_cleaning = FALSE;
  char const *patterns_name = 0;
  while ((i = FUNC10 (argc, argv, "hvu:B:p:c")) != -1) {
    switch (i) {
    case 'h':
      FUNC16();
      return 2;
    case 'v':
      verbosity++;
      break;
    case 'u':
      username = optarg;
      break;
    case 'B':
      FUNC3 (FUNC14 (optarg, "%lld%c", &x, &c) >= 1);
      switch (c | 0x20) {
      case 'k':  x <<= 10; break;
      case 'm':  x <<= 20; break;
      case 'g':  x <<= 30; break;
      case 't':  x <<= 40; break;
      default: FUNC3 (c == 0x20);
      }
      if (x >= 1024 && x < (1LL << 60)) {
        max_binlog_size = x;
      }
      break;
    case 'p':
      patterns_name = optarg;
      break;
    case 'c':
      binlog_file_need_cleaning = TRUE;
      break;
    }
  }

  if (argc != optind + 1) {
    FUNC16();
    return 2;
  }

  FUNC0 ();

  binlogname = argv[optind];
  if (binlog_file_need_cleaning) {
    FUNC4 ();
  }
  FUNC1 (""/* index_fname, empty */);

  FUNC3 (FUNC2 (Binlog) == log_readto_pos);

  FUNC13 (SIGINT, sigint_handler);
  FUNC13 (SIGTERM, sigterm_handler);
//  signal (SIGPOLL, sigpoll_handler);

  if (patterns_name) {
    FUNC11 (patterns_name);
  }

  FUNC8 (1);
//  flush_binlog_last ();
//  sync_binlog (2);

  if (verbosity > 0) {
    FUNC9 (stderr, "read: %d records read, %d processed\nwritten: log_pos=%lld, used_z_memory=%d\n",
             records_read, records_processed, (long long)log_pos, FUNC6 ());
  }

  FUNC7 ();

  if (verbosity > 2) {
    FUNC15 ("Memory lost: z_malloc = $3%ld$^, dl_malloc = $3%lld$^\n", FUNC6 (), FUNC5 ());
  }

  FUNC12();
  return 0;
}