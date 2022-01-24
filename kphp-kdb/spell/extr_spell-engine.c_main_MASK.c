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
 void* BACKLOG ; 
 scalar_t__ MAX_CONNECTIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*) ; 
 void* backlog ; 
 scalar_t__ FUNC3 (char*) ; 
 int daemonize ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC6 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 void* logname ; 
 scalar_t__ maxconn ; 
 void* optarg ; 
 char* port ; 
 char* progname ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  settings_addr ; 
 scalar_t__ sfd ; 
 int /*<<< orphan*/  spell_done ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  stderr ; 
 int test_mode ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 void* udp_port ; 
 int use_aspell_suggestion ; 
 char* username ; 
 int /*<<< orphan*/  verbosity ; 
 int yo_hack ; 

int FUNC16 (int argc, char *argv[]) {
  int i;
  //int k;
  //long long x;
  //char c;

  FUNC12 ();

  progname = argv[0];
  while ((i = FUNC6 (argc, argv, "b:c:l:p:U:dhu:vSty")) != -1) {
    switch (i) {
    case 'y':
      yo_hack = 1;
    break;
    case 't':
      test_mode = 1;
    break;
    case 'S':
      use_aspell_suggestion = 1;
    break;
    case 'v':
      verbosity++;
      break;
    case 'h':
      FUNC7 ();
      return 2;
    case 'b':
      backlog = FUNC2 (optarg);
      if (backlog <= 0) {
        backlog = BACKLOG;
      }
      break;
    case 'c':
      maxconn = FUNC2 (optarg);
      if (maxconn <= 0 || maxconn > MAX_CONNECTIONS) {
        maxconn = MAX_CONNECTIONS;
      }
      break;
    case 'p':
      port = FUNC2 (optarg);
      break;
    case 'U':
      udp_port = FUNC2 (optarg);
      break;
    case 'u':
      username = optarg;
      break;
    case 'l':
      logname = optarg;
      break;
    case 'd':
      daemonize ^= 1;
      break;
    }
  }

  //dynamic_data_buffer_size = 1 << 22;

  if (FUNC10 (maxconn + 16) < 0) {
    FUNC5 (stderr, "fatal: cannot raise open file limit to %ld\n", maxconn + 16);
    FUNC4 (1);
  }
  
  sfd = FUNC11 (port, settings_addr, backlog, 0);
  if (sfd < 0) {
    FUNC9 ("cannot open server socket at port %d: %m\n", port);
    FUNC4 (1);
  }

  FUNC0 (0);

  if (FUNC3 (username) < 0) {
    FUNC9 ("fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC4 (1);
  }

  FUNC8 ();

  start_time = FUNC15 (0);
  FUNC13 ();
  FUNC1 (spell_done);

  FUNC14 ();
  return 0;
}