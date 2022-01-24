#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct worker_stats {int dummy; } ;
struct related_binlog_status {int dummy; } ;
struct related_binlog {int dummy; } ;
struct TYPE_10__ {scalar_t__ port; } ;
struct TYPE_9__ {scalar_t__ port; } ;
struct TYPE_8__ {int status; TYPE_1__* binlog; } ;
struct TYPE_7__ {int flags; } ;

/* Variables and functions */
 int BACKLOG ; 
 TYPE_2__* LR ; 
 int MAP_ANONYMOUS ; 
 int MAP_SHARED ; 
 scalar_t__ MAX_CONNECTIONS ; 
 TYPE_5__ PID ; 
 int /*<<< orphan*/  PING_INTERVAL ; 
 scalar_t__ PRIVILEGED_TCP_PORTS ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int RBStats ; 
 int /*<<< orphan*/  SM_IPV6 ; 
 int WStats ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* aes_pwd_file ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int backlog ; 
 int /*<<< orphan*/  binlog_disabled ; 
 scalar_t__ FUNC4 (char*) ; 
 int check_all_locations ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* config_filename ; 
 int daemonize ; 
 TYPE_4__ default_ct ; 
 scalar_t__ default_target_port ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int double_send_recv ; 
 long long dynamic_data_buffer_size ; 
 int /*<<< orphan*/  enable_ipv6 ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/ * fd ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC11 (int,char**,char*) ; 
 int FUNC12 () ; 
 char* hostname ; 
 int /*<<< orphan*/  hostname_len ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  kdb_hosts_loaded ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 void* last_handshake_id ; 
 void* last_session_id ; 
 int local_rbs ; 
 void* logname ; 
 void* FUNC18 () ; 
 scalar_t__ maxconn ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,TYPE_2__*,int) ; 
 int FUNC20 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ) ; 
 int monitor_priority ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 void* optarg ; 
 int optind ; 
 int orig_local_rbs ; 
 int parent_pid ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int* pids ; 
 int /*<<< orphan*/  ping_interval ; 
 scalar_t__ port ; 
 char* progname ; 
 scalar_t__ FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 scalar_t__ FUNC26 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  settings_addr ; 
 scalar_t__ sfd ; 
 int slave_mode ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int FUNC30 (void*,char*,long long*,char*) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC32 (char*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 () ; 
 char* username ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,char*,int) ; 
 int worker_id ; 
 int workers ; 

int FUNC36 (int argc, char *argv[]) {
  int i, syntax_check = 0;
  long long x;
  char c;

  FUNC27 ();
  FUNC29 (FUNC24());

  progname = argv[0];
  while ((i = FUNC11 (argc, argv, "6CDH:LM:P:T:Z:b:c:dhl:p:q:ru:v")) != -1) {
    switch (i) {
    case 'v':
      verbosity++;
      break;
    case 'h':
      FUNC34();
      return 2;
    case 'C':
      syntax_check = 1;
      break;
    case 'D':
      double_send_recv = 1;
      break;
    case 'L':
      check_all_locations = 1;
      break;
    case 'b':
      backlog = FUNC3 (optarg);
      if (backlog <= 0) {
	backlog = BACKLOG;
      }
      break;
    case 'c':
      maxconn = FUNC3 (optarg);
      if (maxconn <= 0 || maxconn > MAX_CONNECTIONS) {
        maxconn = MAX_CONNECTIONS;
      }
      break;
    case 'p':
      port = FUNC3(optarg);
      break;
    case 'u':
      username = optarg;
      break;
    case 'l':
      logname = optarg;
      break;
    case 'r':
      binlog_disabled++;
      break;
    case 'd':
      daemonize ^= 1;
      break;
    case 'P':
      aes_pwd_file = optarg;
      break;
    case 'H':
      hostname = optarg;
      break;
    case 'M':
      workers = FUNC3 (optarg);
      FUNC1 (workers >= 0);
      break;
    case 'Z':
      c = 0;
      FUNC1 (FUNC30 (optarg, "%lld%c", &x, &c) >= 1);
      switch (c | 0x20) {
      case 'k':  x <<= 10; break;
      case 'm':  x <<= 20; break;
      case 'g':  x <<= 30; break;
      case 't':  x <<= 40; break;
      default: FUNC1 (c == 0x20);
      }
      if (x >= (1LL << 20) && x <= (sizeof(long) == 4 ? (3LL << 30) : (100LL << 30))) {
        dynamic_data_buffer_size = x;
      }
      break;
    case '6':
      enable_ipv6 = SM_IPV6;
      break;
    case 'q':
      monitor_priority = FUNC3 (optarg) & 3;
      break;
    case 'T':
      ping_interval = FUNC2 (optarg);
      if (ping_interval <= 0) {
        ping_interval = PING_INTERVAL;
      }
      break;
    default:
      FUNC1 (0);
    }
  }
  if (argc != optind + 1) {
    FUNC34();
    return 2;
  }

  PID.port = port;
  default_ct.port = port;
  default_target_port = port;

  FUNC7 ();
  hostname_len = FUNC32 (hostname);

  if (FUNC23 (maxconn + 16) < 0) {
    FUNC10 (stderr, "fatal: cannot raise open file limit to %ld\n", maxconn+16);
    FUNC8 (1);
  }

  if (port < PRIVILEGED_TCP_PORTS) {
    sfd = FUNC26 (port, settings_addr, backlog, enable_ipv6);
    if (sfd < 0) {
      FUNC10 (stderr, "cannot open server socket at port %ld: %m\n", port);
      FUNC8 (1);
    }
  }

  FUNC14();

  config_filename = argv[optind];

  FUNC21 (0, config_filename, 0);
  i = FUNC22 (0);

  FUNC6 (fd[0]);

  if (i < 0) {
    FUNC10 (stderr, "config check failed!\n");
    return -i;
  }

  if (verbosity > 0) {
    FUNC10 (stderr, "config loaded!\n");
  }

  if (workers > local_rbs) {
    workers = local_rbs;
  }

  if (syntax_check) {
    return 0;
  }

  if (!local_rbs) {
    FUNC10 (stderr, "nothing to do: no related binlogs found in %s for hostname %s, exiting\n", config_filename, hostname);
    FUNC8 (0);
  }

  if (daemonize && !workers) {
    FUNC28();
  }

  orig_local_rbs = local_rbs;

  RBStats = FUNC20 (0, 2 * local_rbs * sizeof (struct related_binlog_status), PROT_READ | PROT_WRITE, MAP_SHARED | MAP_ANONYMOUS, -1, 0);
  FUNC1 (RBStats);

  for (i = 0; i < local_rbs; i++) {
    LR[i].status = RBStats + 2 * i;
  }

  if (workers) {
    if (!kdb_hosts_loaded) {
      FUNC16 ();
    }
    for (i = 0; i < local_rbs; i++) {
      FUNC1 (!(LR[i].binlog->flags & 4));
    }
    WStats = FUNC20 (0, 2 * workers * sizeof (struct worker_stats), PROT_READ | PROT_WRITE, MAP_SHARED | MAP_ANONYMOUS, -1, 0);
    FUNC1 (WStats);
    FUNC17 ();
    FUNC35 (0, "creating %d workers\n", workers);
    for (i = 0; i < workers; i++) {
      int pid = FUNC9 ();
      FUNC1 (pid >= 0);
      if (!pid) {
        int j = i, k = 0;
        while (j < local_rbs) {
          FUNC19 (LR + k, LR + j, sizeof (struct related_binlog));
          j += workers;
          k++;
        }
        worker_id = i;
        local_rbs = k;
        workers = 0;
        slave_mode = 1;
        parent_pid = FUNC12 ();
        FUNC1 (parent_pid > 1);
        break;
      } else {
        pids[i] = pid;
      }
    }
  }

  FUNC0 (aes_pwd_file);

  if (FUNC4 (username) < 0) {
    FUNC10 (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC8 (1);
  }

  if (FUNC5 () <= 0 && !workers) {
    FUNC10 (stderr, "fatal: do not have needed binlog files\n");
    FUNC8 (3);
  }

  if (workers) {
    local_rbs = 0;
  }

  FUNC13 (0, 0);

  start_time = FUNC33(0);

  if (!slave_mode) {
    FUNC15 (monitor_priority);
  }
  FUNC25 ();

  last_handshake_id = FUNC18 ();
  last_session_id = FUNC18 ();

  FUNC31();

  return 0;
}