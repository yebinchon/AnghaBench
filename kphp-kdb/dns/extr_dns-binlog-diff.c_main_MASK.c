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
typedef  int /*<<< orphan*/  zone_t ;

/* Variables and functions */
 int /*<<< orphan*/  Binlog ; 
 int add_logevents ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (void*) ; 
 int /*<<< orphan*/  binlog_disabled ; 
 int /*<<< orphan*/ * FUNC3 (char*,int) ; 
 int binlogname ; 
 scalar_t__ FUNC4 (char*) ; 
 int delete_logevents ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ log_readto_pos ; 
 void* logname ; 
 char* maxconn ; 
 void* optarg ; 
 int optind ; 
 char* progname ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 char* username ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC14 (int argc, char *argv[]) {
  int c;

  progname = argv[0];

  while ((c = FUNC8 (argc, argv, "c:l:u:v")) != -1) {
    switch (c) {
    case 'c':
      maxconn = FUNC2 (optarg);
      break;
    case 'l':
      logname = optarg;
      break;
    case 'u':
      username = optarg;
      break;
    case 'v':
      verbosity++;
      break;
    default:
      FUNC7 (stderr, "Unimplemented option %c\n", c);
      FUNC12 ();
    }
  }
  if (argc != optind + 2) {
    FUNC12 ();
    return 2;
  }

  if (FUNC10 (maxconn + 16) < 0) {
    FUNC9 ("fatal: cannot raise open file limit to %d\n", maxconn + 16);
    FUNC5 (1);
  }

  if (FUNC4 (username) < 0) {
    FUNC9 ("fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC5 (1);
  }

  //dynamic_data_buffer_size = 64 << 20;
  //init_dyn_data ();
  zone_t *new_zones = FUNC3 (argv[optind], 1);
  FUNC1 (*new_zones);
  zone_t *old_zones = FUNC3 (argv[optind+1], 0);
  FUNC1 (*old_zones);

  FUNC1 (binlogname);
  FUNC1 (!binlog_disabled);
  FUNC1 (FUNC0 (Binlog) == log_readto_pos);

  FUNC13 (new_zones, old_zones);
  FUNC6 ();
  FUNC11 (2);
  if (verbosity) {
    FUNC7 (stdout, "%d add record logevents.\n", add_logevents);
    FUNC7 (stdout, "%d delete record logevents.\n", delete_logevents);
  }

  return 0;
}