#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;

/* Variables and functions */
 void* BACKLOG ; 
 scalar_t__ MAX_CONNECTIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*) ; 
 void* backlog ; 
 char* config_filename ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int daemonize ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 void* logname ; 
 scalar_t__ maxconn ; 
 int memcache_port ; 
 scalar_t__ memcache_sfd ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int port ; 
 char* progname ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  replicator_mode ; 
 int /*<<< orphan*/  round_robin ; 
 scalar_t__ FUNC11 (int,TYPE_1__,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 TYPE_1__ settings_addr ; 
 scalar_t__ sfd ; 
 int /*<<< orphan*/  sql_database ; 
 int /*<<< orphan*/  sql_database_r ; 
 int /*<<< orphan*/  sql_password ; 
 int /*<<< orphan*/  sql_password_r ; 
 int /*<<< orphan*/  sql_username ; 
 int /*<<< orphan*/  sql_username_r ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  test_mode ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 void* username ; 
 scalar_t__ verbosity ; 

int FUNC16 (int argc, char *argv[]) {
  int i, syntax_check = 0;

  FUNC12 ();

  progname = argv[0];
  while ((i = FUNC6 (argc, argv, "b:c:l:p:rs:n:dCRThu:v")) != -1) {
    switch (i) {
    case 'v':
      verbosity++;
      break;
    case 'h':
      FUNC15();
      return 2;
    case 'b':
      backlog = FUNC1(optarg);
      if (backlog <= 0) {
        backlog = BACKLOG;
      }
      break;
    case 'c':
      maxconn = FUNC1(optarg);
      if (maxconn <= 0 || maxconn > MAX_CONNECTIONS) {
	maxconn = MAX_CONNECTIONS;
      }
      break;
    case 'p':
      port = FUNC1(optarg);
      break;
    case 's':
      memcache_port = FUNC1(optarg);
      break;
    case 'n':
      errno = 0;
      FUNC8 (FUNC1 (optarg));
      if (errno) {
        FUNC9 ("nice");
      }
      break;
    case 'R':
      sql_username = sql_username_r;
      sql_password = sql_password_r;
      sql_database = sql_database_r;
      replicator_mode++;
      break;
    case 'u':
      username = optarg;
      break;
    case 'l':
      logname = optarg;
      break;
    case 'T':
      test_mode++;
      break;
    case 'C':
      syntax_check = 1;
      break;
    case 'r':
      round_robin++;
      break;
    case 'd':
      daemonize ^= 1;
    }
  }
  if (argc != optind + 1) {
    FUNC15();
    return 2;
  }

  FUNC7 ();

  config_filename = argv[optind];

  i = FUNC3 (0);

  if (i < 0) {
    FUNC5 (stderr, "config check failed!\n");
    return -i;
  }

  if (verbosity > 0) {
    FUNC5 (stderr, "config loaded!\n");
  }

  if (syntax_check) {
    return 0;
  }

  FUNC0 (0);

  if (FUNC10(maxconn + 16) < 0 && !test_mode) {
    FUNC5 (stderr, "fatal: cannot raise open file limit to %ld\n", maxconn+16);
    FUNC4(1);
  }

  sfd = FUNC11 (port, settings_addr, backlog, 0);
  if (sfd < 0) {
    FUNC5(stderr, "cannot open server socket at port %d: %m\n", port);
    FUNC4(1);
  }
  if (verbosity) {
    FUNC5 (stderr, "created listening socket at %s:%d, fd=%ld\n", FUNC2(settings_addr.s_addr, 0), port, sfd);
  }
  
  if (memcache_port) {
    memcache_sfd = FUNC11 (memcache_port, settings_addr, backlog, 0);
    if (memcache_sfd < 0) {
      FUNC5(stderr, "cannot open memcache server socket at port %d: %m\n", memcache_port);
      FUNC4(1);
    }
    if (verbosity) {
      FUNC5 (stderr, "created memcache listening socket at %s:%d, fd=%ld\n", FUNC2(settings_addr.s_addr, 0), memcache_port, memcache_sfd);
    }
  }

  start_time = FUNC14(0);

  FUNC13();

  return 0;
}