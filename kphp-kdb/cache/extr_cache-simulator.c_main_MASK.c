#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {long long disk_size; long long default_file_size; long long download_speed; char* amortization_counters_initialization_string; int init_using_greedy_strategy; int /*<<< orphan*/  delay_between_priority_lists_requests; void* optimization; } ;
struct TYPE_3__ {int /*<<< orphan*/  log_readto_pos; } ;

/* Variables and functions */
 void* BACKLOG ; 
 int /*<<< orphan*/  CACHE_FEATURE_REPLAY_DELETE ; 
 scalar_t__ MAX_CONNECTIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* backlog ; 
 int binlog_disabled ; 
 char* binlogname ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  cache_features_mask ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  cache_simulator_greedy_init_replay_logevent ; 
 int /*<<< orphan*/  cache_simulator_replay_logevent ; 
 scalar_t__ FUNC7 (char*) ; 
 int daemonize ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  log_readto_pos ; 
 void* logname ; 
 scalar_t__ maxconn ; 
 void* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int print_unknown_size_uries ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  replay_logevent ; 
 int /*<<< orphan*/  FUNC16 () ; 
 TYPE_2__ simulation_params ; 
 TYPE_1__ simulation_stats ; 
 int FUNC17 (void*,char*,long long*,char*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 char* username ; 
 int /*<<< orphan*/  verbosity ; 
 int /*<<< orphan*/  FUNC20 (int,char*) ; 

int FUNC21 (int argc, char *argv[]) {
  int i;
  char c;
  long long x;

  FUNC16 ();
  binlog_disabled = 1;

  while ((i = FUNC10 (argc, argv, "D:F:O:R:S:T:Ua:b:c:dghl:u:v")) != -1) {
    switch (i) {
     case 'D':
     case 'F':
     case 'S':
       c = 0;
       FUNC1 (FUNC17 (optarg, "%lld%c", &x, &c) >= 1);
       switch (c | 0x20) {
         case 'k':  x <<= 10; break;
         case 'm':  x <<= 20; break;
         case 'g':  x <<= 30; break;
         case 't':  x <<= 40; break;
         default: FUNC1 (c == 0x20);
       }
       FUNC1 (x >= 0);
       if (i == 'D') {
         simulation_params.disk_size = x;
       }
       if (i == 'F') {
         simulation_params.default_file_size = x;
       }
       if (i == 'S') {
         simulation_params.download_speed = x;
       }
       break;
    case 'O':
      simulation_params.optimization = FUNC2 (optarg);
      break;
    case 'R':
      simulation_params.delay_between_priority_lists_requests = FUNC3 (optarg);
      break;
    case 'T':
      simulation_params.amortization_counters_initialization_string = optarg;
      break;
    case 'U':
      print_unknown_size_uries = 1;
      break;
    case 'a':
      binlogname = optarg;
      break;
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
    case 'd':
      daemonize ^= 1;
      break;
    case 'g':
      simulation_params.init_using_greedy_strategy = 1;
      break;
    case 'h':
      FUNC19 ();
      return 2;
    case 'l':
      logname = optarg;
      break;
    case 'u':
      username = optarg;
      break;
    case 'v':
      verbosity++;
      break;
    }
  }
  if (argc != optind + 1) {
    FUNC19();
    return 2;
  }

  if (FUNC15 (maxconn + 16) < 0) {
    FUNC12 ("fatal: cannot raise open file limit to %d\n", maxconn + 16);
    FUNC9 (1);
  }

  FUNC0 (0);

  if (FUNC7 (username) < 0) {
    FUNC12 ("fatal: cannot change user to %s\n", username ? username : "(none)");
    FUNC9 (1);
  }

  FUNC11 ();
  FUNC5 (2000000);

  if (FUNC6 (simulation_params.amortization_counters_initialization_string) < 0) {
    FUNC12 ("cache_set_amortization_tables_initialization_string (\"%s\") failed.\n", simulation_params.amortization_counters_initialization_string);
    FUNC9 (1);
  }

  if (FUNC8 (argv[optind], binlogname) < 0) {
    FUNC12 ("cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    FUNC9 (1);
  }

  FUNC20 (3, "engine_preload_filelist done\n");

  cache_features_mask &= ~CACHE_FEATURE_REPLAY_DELETE;

  FUNC14 ("Init URLs size field");
  simulation_stats.log_readto_pos = log_readto_pos;
  FUNC4 ();

  if (simulation_params.init_using_greedy_strategy) {
    replay_logevent = cache_simulator_greedy_init_replay_logevent;
    FUNC14 ("Init cache using greedy strategy");
  }

  replay_logevent = cache_simulator_replay_logevent;
  FUNC14 ("Simulation");
  FUNC13 ();
  FUNC18 ();
  return 0;
}