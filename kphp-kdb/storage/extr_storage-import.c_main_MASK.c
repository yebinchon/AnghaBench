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
 char** GP ; 
 int MAX_GROUP_PATHS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*) ; 
 int dump_rows ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (void*,char*) ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 void* optarg ; 
 int optind ; 
 scalar_t__ pmemcache_dump ; 
 char* progname ; 
 void* row_prefix ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int split_modulo ; 
 int split_rem ; 
 int FUNC12 (void*,char*,...) ; 
 char* FUNC13 (char*,char) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int use_old_secret ; 
 char* username ; 
 int /*<<< orphan*/  verbosity ; 
 scalar_t__ volume_id ; 

int FUNC16 (int argc, char *argv[]) {
  int i;
  int dump_lev_start = 1;
  FUNC11();
  progname = FUNC13 (argv[0], '/');
  progname = (progname == NULL) ? argv[0] : progname + 1;
  int group_paths = 0;
  while ((i = FUNC6 (argc, argv, "m:vu:Ip:g:V:TP:S")) != -1) {
    switch (i) {
    case 'S':
      use_old_secret = 1;
      break;
    case 'P':
      if (pmemcache_dump) {
        FUNC4 (pmemcache_dump);
      }
      pmemcache_dump = FUNC5 (optarg, "a");
      break;
    case 'T':
      dump_lev_start = 0;
      break;
    case 'V':
      FUNC12 (optarg, "%lld", &volume_id);
      break;
    case 'm':
      FUNC1 (FUNC12 (optarg, "%d,%d", &split_rem, &split_modulo) == 2);
      FUNC1 (split_modulo > 0 && split_modulo <= 1000 && split_rem >= 0 && split_rem < split_modulo);
      break;
    case 'v':
      verbosity++;
      break;
    case 'u':
      username = optarg;
      break;
    case 'I':
      dump_rows = 1;
      break;
    case 'p':
      row_prefix = optarg;
      break;
    case 'g':
      FUNC1 (group_paths < MAX_GROUP_PATHS);
      GP[group_paths++] = optarg;
    }
  }

  if (volume_id < 0) {
    FUNC15 ();
    FUNC10 ("volume_id is not given\n");
    FUNC3 (1);
  }

  if (!split_modulo) {
    FUNC15 ();
    FUNC10 ("-m option is not given\n");
    FUNC3 (1);
  }

  if (10000 % split_modulo) {
    FUNC10 ("split_modulo should divides 10000\n");
    FUNC3 (1);
  }

  if (FUNC2 (username) < 0) {
    FUNC10 ("fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC3(1);
  }

  for (i = optind; i < argc; i++) {
    FUNC14 (argv[i]);
  }
  for (i = 0; i < group_paths; i++) {
    FUNC14 (GP[i]);
  }

  FUNC9 ();
  FUNC0 (NULL);
  if (dump_lev_start) {
    FUNC7 ();
  }

  for (i = optind; i < argc; i++) {
    FUNC8 (argv[i], 1);
  }
  for (i = 0; i < group_paths; i++) {
    FUNC8 (GP[i], -1);
  }
/*
  kprintf ("opened_base_doc = %d, opened_aux_doc = %d\n", opened_base_doc, opened_aux_doc);
  kprintf ("successfully_read_base_doc = %d, successfully_read_aux_doc = %d\n", successfully_read_base_doc, successfully_read_aux_doc);
*/
  if (pmemcache_dump) {
    FUNC4 (pmemcache_dump);
  }

  return 0;
}