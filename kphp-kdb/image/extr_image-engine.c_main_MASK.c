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
 int MAX_CHILD_PROCESS ; 
 int MAX_CONNECTIONS ; 
 int MAX_THREADS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (void*) ; 
 void* backlog ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int daemonize ; 
 int dynamic_data_buffer_size ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 (int,char**,char*) ; 
 char* groupname ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int job_nice ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 void* logname ; 
 int main_nice ; 
 long long max_all_results ; 
 long long max_load_image_area ; 
 int max_process_number ; 
 long long max_virtual_memory ; 
 int maxconn ; 
 long long memory_limit ; 
 scalar_t__ FUNC10 (int) ; 
 void* optarg ; 
 int port ; 
 char* progname ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 long long rss_memory_limit ; 
 scalar_t__ FUNC13 (int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  settings_addr ; 
 scalar_t__ sfd ; 
 int FUNC15 (void*,char*,long long*,char*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  start_time ; 
 int threads_limit ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 char* username ; 
 int /*<<< orphan*/  verbosity ; 
 int /*<<< orphan*/  FUNC19 (int,char*) ; 

int FUNC20 (int argc, char *argv[]) {
  int i, k;
  long long x;
  char c;

  FUNC14 ();
  progname = argv[0];
  while ((i = FUNC6 (argc, argv, "A:H:M:N:P:R:T:b:c:g:l:n:p:dhu:v")) != -1) {
    switch (i) {
     case 'A':
     case 'H':
     case 'M':
     case 'R':
       c = 0;
       FUNC1 (FUNC15 (optarg, "%lld%c", &x, &c) >= 1);
       switch (c | 0x20) {
         case 'k':  x <<= 10; break;
         case 'm':  x <<= 20; break;
         case 'g':  x <<= 30; break;
         case 't':  x <<= 40; break;
         default: FUNC1 (c == 0x20);
       }
       if (i == 'A' && x >= (1 << 20) && x <= (1 << 30)) {
         max_load_image_area = x;
       }
       if (i == 'H' && x >= (1LL << 20) && x <= max_virtual_memory) {
         max_all_results = x;
       }
       if (i == 'M' && x >= (128LL << 20) && x <= max_virtual_memory) {
         memory_limit = x;
       }
       if (i == 'R' && x >= (64LL << 20) && x <= rss_memory_limit) {
         rss_memory_limit = x;
       }
       break;
    case 'N':
      job_nice = FUNC2 (optarg);
      break;
    case 'P':
      k = FUNC2 (optarg);
      if (k >= 1 && k <= MAX_CHILD_PROCESS) {
        max_process_number = k;
      }
      break;
    case 'T':
      k = FUNC2 (optarg);
      if (k >= 1 && k <= MAX_THREADS) {
        threads_limit = k;
      }
      break;
    case 'v':
      verbosity++;
      break;
    case 'g':
      groupname = optarg;
      break;
    case 'h':
      FUNC18 ();
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
    case 'n':
      main_nice = FUNC2 (optarg);
      break;
    case 'p':
      port = FUNC2 (optarg);
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

  if (max_process_number) {
    FUNC9 ();
  } else {
    FUNC8 ("max-child-process-number isn't stricly positive\n");
    FUNC18 ();
  }

  if (job_nice < main_nice) {
    FUNC8 ("Job process nice is smaller than main process nice.\nSee man 2 nice: Only the super user may specify a negative increment, or priority increase.\n");
    FUNC18 ();
  }

  if (main_nice < -20 || main_nice > 19) {
    FUNC8 ("Main process nice should be in the range -20 to 19.\n");
    FUNC4 (1);
  }

  if (job_nice < -20 || job_nice > 19) {
    FUNC8 ("Job process nice should be in the range -20 to 19.\n");
    FUNC4 (1);
  }

  if (FUNC10 (main_nice) < 0) {
    FUNC8 ("nice (%d) fail. %m\n", main_nice);
    FUNC4 (1);
  }

  FUNC19 (3, "Command line parsed\n");

  if (!username && maxconn == MAX_CONNECTIONS && FUNC5 ()) {
    maxconn = 1000; //not for root
  }

  dynamic_data_buffer_size = 1 << 22;

  if (FUNC11 (maxconn + 16) < 0) {
    FUNC8 ("fatal: cannot raise open file limit to %d\n", maxconn + 16);
    FUNC4 (1);
  }

  FUNC0 (0);

  if (FUNC3 (username, groupname) < 0) {
    FUNC8 ("fatal: cannot change user to %s, group to %s\n", username ? username : "(none)", groupname ? groupname : "(none)");
    FUNC4 (1);
  }

  FUNC7();

  sfd = FUNC13 (port, settings_addr, backlog, 0);
  if (sfd < 0) {
    FUNC8 ("cannot open server socket at port %d: %m\n", port);
    FUNC4 (1);
  }

  FUNC12 ();
  start_time = FUNC17(0);

  FUNC16 ();
  return 0;
}