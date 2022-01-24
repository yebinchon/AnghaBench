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
 int LAST_OPER_BUF_SIZE ; 
 int MAX_CONNECTIONS ; 
 scalar_t__ MAX_ZMALLOC_MEM ; 
 int /*<<< orphan*/  MCL_FUTURE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*) ; 
 void* backlog ; 
 int daemonize ; 
 int dynamic_data_buffer_size ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  last_oper_type ; 
 void* logname ; 
 int max_memory ; 
 int maxconn ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 void* oom_score_adj ; 
 void* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int port ; 
 scalar_t__ FUNC15 (int) ; 
 int return_false_if_not_found ; 
 int rpc_crc32_mode ; 
 int rpc_disable_crc32_check ; 
 scalar_t__ FUNC16 (int,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  settings_addr ; 
 scalar_t__ sfd ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 void* udp_port ; 
 void* username ; 
 int /*<<< orphan*/  verbosity ; 

int FUNC19 (int argc, char *argv[]) {
  int i;
  rpc_disable_crc32_check = 1;

  while ((i = FUNC7 (argc, argv, "b:c:l:p:U:m:n:dfhu:vrkO:C:")) != -1) {
    switch (i) {
    case 'v':
      verbosity++;
      break;
    case 'h':
      FUNC8();
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
    case 'm':
      max_memory = FUNC2 (optarg);
      max_memory -= FUNC5();
      if (max_memory < 1) {
        max_memory = 1;
      }
      max_memory *= 1048576;
      break;
    case 'n':
      errno = 0;
      FUNC13 (FUNC2 (optarg));
      if (errno) {
        FUNC14 ("nice");
      }
      break;
    case 'p':
      port = FUNC2 (optarg);
      break;
    case 'O':
      oom_score_adj = FUNC2 (optarg);
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
    case 'f':
      return_false_if_not_found = 1;
      break;
    case 'r':
      // nothing to do
      break;
    case 'C':
      rpc_crc32_mode = FUNC2 (optarg);
      rpc_disable_crc32_check = (rpc_crc32_mode & 1);
    case 'k':
      break;
      if (FUNC12 (/* MCL_CURRENT | */ MCL_FUTURE) != 0) {
        FUNC4 (stderr, "error: fail to lock paged memory\n");
      }
      break;
    }
  }

  if (argc != optind) {
    FUNC8();
    return 2;
  }

  if (!username && maxconn == MAX_CONNECTIONS && FUNC6()) {
    maxconn = 1000; //not for root
  }

  if (dynamic_data_buffer_size > max_memory) {
    dynamic_data_buffer_size = max_memory;
  }

  if (MAX_ZMALLOC_MEM > 0) {
    FUNC9();
  }

  FUNC10();
#ifdef HISTORY
  memset (last_oper_type, -1, LAST_OPER_BUF_SIZE * sizeof (char));
#endif

  if (FUNC15 (maxconn + 16) < 0) {
    FUNC4 (stderr, "fatal: cannot raise open file limit to %d\n", maxconn + 16);
    FUNC3 (1);
  }

  if (oom_score_adj) {
    FUNC0 (oom_score_adj);
  }

  FUNC1 (0);

  sfd = FUNC16 (port, settings_addr, backlog, 0);
  if (sfd < 0) {
    FUNC4 (stderr, "cannot open server socket at port %d: %m\n", port);
    FUNC3 (1);
  }

  start_time = FUNC18 (NULL);

  FUNC17();

  return 0;
}