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
 void* FUNC0 (void*) ; 
 void* backlog ; 
 char* config_filename ; 
 int daemonize ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int,char**,char*) ; 
 void* logname ; 
 scalar_t__ maxconn ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 void* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int port ; 
 char* progname ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ sdf ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  settings_addr ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 void* username ; 
 int /*<<< orphan*/  verbosity ; 

int FUNC11 (int argc, char *argv[]) {
  int i;

  progname = argv[0];
  while ((i = FUNC3 (argc, argv, "b:c:l:p:dhu:v")) != -1) {
    switch (i) {
    case 'v':
      verbosity++;
      break;
    case 'h':
      FUNC10();
      return 2;
    case 'b':
      backlog = FUNC0(optarg);
      if (backlog <= 0) backlog = BACKLOG;
      break;
    case 'c':
      maxconn = FUNC0(optarg);
      if (maxconn <= 0 || maxconn > MAX_CONNECTIONS) {
  maxconn = MAX_CONNECTIONS;
      }
      break;
    case 'p':
      port = FUNC0(optarg);
      break;
    case 'u':
      username = optarg;
      break;
    case 'l':
      logname = optarg;
      break;
    case 'd':
      daemonize ^= 1;
    }
  }
  if (argc != optind + 1) {
    FUNC10();
    return 2;
  }

  FUNC4 (0, config_filename = argv[optind], 0);
  FUNC5 ();

  if (FUNC6(maxconn + 16) < 0) {
    FUNC2 (stderr, "fatal: cannot raise open file limit to %d\n", maxconn+16);
    FUNC1(1);
  }

  sdf = FUNC7 (port, settings_addr, backlog, 0);
  if (sdf < 0) {
    FUNC2(stderr, "cannot open server socket at port %d: %m\n", port);
    FUNC1(1);
  }


  start_time = FUNC9(0);

  FUNC8();

  return 0;
}