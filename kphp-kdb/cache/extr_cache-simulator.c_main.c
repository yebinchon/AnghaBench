
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {long long disk_size; long long default_file_size; long long download_speed; char* amortization_counters_initialization_string; int init_using_greedy_strategy; int delay_between_priority_lists_requests; void* optimization; } ;
struct TYPE_3__ {int log_readto_pos; } ;


 void* BACKLOG ;
 int CACHE_FEATURE_REPLAY_DELETE ;
 scalar_t__ MAX_CONNECTIONS ;
 int aes_load_pwd_file (int ) ;
 int assert (int) ;
 void* atoi (void*) ;
 int atoll (void*) ;
 void* backlog ;
 int binlog_disabled ;
 char* binlogname ;
 int cache_clear_all_acounters () ;
 int cache_features_mask ;
 int cache_hashtable_init (int) ;
 scalar_t__ cache_set_amortization_tables_initialization_string (char*) ;
 int cache_simulator_greedy_init_replay_logevent ;
 int cache_simulator_replay_logevent ;
 scalar_t__ change_user (char*) ;
 int daemonize ;
 scalar_t__ engine_preload_filelist (char*,char*) ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 int init_dyn_data () ;
 int kprintf (char*,char*) ;
 int log_readto_pos ;
 void* logname ;
 scalar_t__ maxconn ;
 void* optarg ;
 int optind ;
 int params () ;
 int play_binlog (char*) ;
 int print_unknown_size_uries ;
 scalar_t__ raise_file_rlimit (scalar_t__) ;
 int replay_logevent ;
 int set_debug_handlers () ;
 TYPE_2__ simulation_params ;
 TYPE_1__ simulation_stats ;
 int sscanf (void*,char*,long long*,char*) ;
 int stats () ;
 int usage () ;
 char* username ;
 int verbosity ;
 int vkprintf (int,char*) ;

int main (int argc, char *argv[]) {
  int i;
  char c;
  long long x;

  set_debug_handlers ();
  binlog_disabled = 1;

  while ((i = getopt (argc, argv, "D:F:O:R:S:T:Ua:b:c:dghl:u:v")) != -1) {
    switch (i) {
     case 'D':
     case 'F':
     case 'S':
       c = 0;
       assert (sscanf (optarg, "%lld%c", &x, &c) >= 1);
       switch (c | 0x20) {
         case 'k': x <<= 10; break;
         case 'm': x <<= 20; break;
         case 'g': x <<= 30; break;
         case 't': x <<= 40; break;
         default: assert (c == 0x20);
       }
       assert (x >= 0);
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
      simulation_params.optimization = atoi (optarg);
      break;
    case 'R':
      simulation_params.delay_between_priority_lists_requests = atoll (optarg);
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
      backlog = atoi (optarg);
      if (backlog <= 0) {
        backlog = BACKLOG;
      }
      break;
    case 'c':
      maxconn = atoi (optarg);
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
      usage ();
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
    usage();
    return 2;
  }

  if (raise_file_rlimit (maxconn + 16) < 0) {
    kprintf ("fatal: cannot raise open file limit to %d\n", maxconn + 16);
    exit (1);
  }

  aes_load_pwd_file (0);

  if (change_user (username) < 0) {
    kprintf ("fatal: cannot change user to %s\n", username ? username : "(none)");
    exit (1);
  }

  init_dyn_data ();
  cache_hashtable_init (2000000);

  if (cache_set_amortization_tables_initialization_string (simulation_params.amortization_counters_initialization_string) < 0) {
    kprintf ("cache_set_amortization_tables_initialization_string (\"%s\") failed.\n", simulation_params.amortization_counters_initialization_string);
    exit (1);
  }

  if (engine_preload_filelist (argv[optind], binlogname) < 0) {
    kprintf ("cannot open binlog files for %s\n", binlogname ? binlogname : argv[optind]);
    exit (1);
  }

  vkprintf (3, "engine_preload_filelist done\n");

  cache_features_mask &= ~CACHE_FEATURE_REPLAY_DELETE;

  play_binlog ("Init URLs size field");
  simulation_stats.log_readto_pos = log_readto_pos;
  cache_clear_all_acounters ();

  if (simulation_params.init_using_greedy_strategy) {
    replay_logevent = cache_simulator_greedy_init_replay_logevent;
    play_binlog ("Init cache using greedy strategy");
  }

  replay_logevent = cache_simulator_replay_logevent;
  play_binlog ("Simulation");
  params ();
  stats ();
  return 0;
}
