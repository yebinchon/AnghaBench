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
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (void*) ; 
 void* backlog ; 
 int daemonize ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int,char**,char*) ; 
 void* hostname ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* logname ; 
 void* max_ad_id ; 
 scalar_t__ maxconn ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 void* port ; 
 char* progname ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  stderr ; 
 void* suffix ; 
 int test_mode ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 void* username ; 
 int /*<<< orphan*/  verbosity ; 

int FUNC13 (int argc, char *argv[]) {
  int i;

  FUNC9 (FUNC11 (0));

  progname = argv[0];                            
  while ((i = FUNC4 (argc, argv, "a:b:c:l:m:n:p:t:u:Tdhv")) != -1) {
    switch (i) {
    case 'v':
      verbosity++;
      break;
    case 'h':
      FUNC12();
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
    case 'n':
      errno = 0;
      FUNC6 (FUNC1 (optarg));
      if (errno) {
        FUNC7 ("nice");
      }
      break;
    case 'u':
      username = optarg;
      break;
    case 'l':
      logname = optarg;
      break;
    case 'T':
      test_mode = 1;
      break;
    case 't':
      hostname = optarg;
      break;
    case 'p':
      port = FUNC1 (optarg);
      break;
    case 'm':
      max_ad_id = FUNC1 (optarg);
      FUNC0 (max_ad_id > 0);
      break;
    case 'a':
      suffix = optarg;
      break;
    case 'd':
      daemonize ^= 1;
    }
  }
  if (argc != optind) {
    FUNC12();
    return 2;
  }

  if (!suffix) {
    FUNC3 (stderr, "fatal: supply a suffix with -a switch\n");
    FUNC2 (1);
  }


  FUNC5 ();

  if (FUNC8 (maxconn + 16) < 0 && !test_mode) {
    FUNC3 (stderr, "fatal: cannot raise open file limit to %ld\n", maxconn+16);
    FUNC2 (1);
  }

  start_time = FUNC11(0);

  FUNC10();

  return 0;
}