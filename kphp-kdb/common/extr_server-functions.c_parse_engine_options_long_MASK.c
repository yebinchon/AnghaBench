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
struct option {int val; scalar_t__ has_arg; scalar_t__ name; } ;

/* Variables and functions */
 void* BACKLOG ; 
 void* MAX_CONNECTIONS ; 
 int /*<<< orphan*/  SM_IPV6 ; 
 void* aes_pwd_file ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 void* backlog ; 
 void* binlog_disabled ; 
 void* binlogname ; 
 int daemonize ; 
 long long dynamic_data_buffer_size ; 
 int /*<<< orphan*/  enable_ipv6 ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,char**,char*,struct option*,int*) ; 
 struct option* global_longopts ; 
 char** global_longopts_help ; 
 char* global_optstring ; 
 int keyring_enabled ; 
 void* logname ; 
 long long max_binlog_size ; 
 void* maxconn ; 
 int /*<<< orphan*/  memcache_auto_answer_mode ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* optarg ; 
 long long FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 void* port ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int* removed_options ; 
 scalar_t__ required_argument ; 
 int /*<<< orphan*/  udp_drop_probability ; 
 int /*<<< orphan*/  udp_enabled ; 
 int /*<<< orphan*/  FUNC8 () ; 
 void* username ; 
 void* verbosity ; 

int FUNC9 (int argc, char **argv,  int (*execute)(int val)) {
  int s = 0;
  while (global_longopts[s].name || global_longopts[s].val) { s ++; }
/*  assert (s + num < 10000);
  memcpy (global_longopts + s, longopts, sizeof (struct option) * num);
  memcpy (global_longopts_help + s, longopts_help, sizeof (void *) * num);*/

/*  int x = strlen (global_optstring);
  int y = strlen (optstring);
  assert ( x + y + s + num <= 20000);

  memcpy (global_optstring + x, optstring, y);
  memcpy (global_optstring_help + x, optstring_help, y * sizeof (void *));

  global_optstring_pos = x + y;
  int t = x + y;*/

  

  int t = 0;

  int i;  
  for (i = 0; i < s; i++) {
    if (global_longopts[i].val >= 33 && global_longopts[i].val <= 127) {
      global_optstring[t ++] = global_longopts[i].val;
      if (global_longopts[i].has_arg == required_argument) {
        global_optstring[t ++] = ':';
      }
    }
  }
  int ss = s;
  for (i = 0; i < s; i++) {
    if (!global_longopts[i].name) {
      struct option t = global_longopts[s - 1];
      global_longopts[s - 1] = global_longopts[i];
      global_longopts[i] = t;
      char *x;
      x = global_longopts_help[i];
      global_longopts_help[i] = global_longopts_help[s - 1];
      global_longopts_help[s - 1] = x;
      s --;
    }
  }
  s = ss;

  long long x;
  while (1) {
    int option_index = 0;
    int c = FUNC3 (argc, argv, global_optstring, global_longopts, &option_index);
    if (c == -1) { break; }
    if (c > 0 && c < 128 && (removed_options[c / 32] & (1 << (c & 31)))) {
      if (execute (c) < 0) {
        FUNC7 ("Unknown option c = %d\n", c);
        FUNC8 ();
        FUNC2 (2);
      }
    } else {
      switch (c) {
      case 0:
        break;
      case 'v':
        if (!optarg) {
          verbosity++;
        } else {
          verbosity = FUNC1 (optarg);
        }
        break;
      case 'h':
        FUNC8 ();
        FUNC2 (2);
      case 'b':
        backlog = FUNC1 (optarg);
        if (backlog <= 0) backlog = BACKLOG;
        break;
      case 'c':
        maxconn = FUNC1 (optarg);
        if (maxconn <= 0 || maxconn > MAX_CONNECTIONS) {
          maxconn = MAX_CONNECTIONS;
        }
        break;
      case 'p':
        port = FUNC1 (optarg);
        break;
      case 'u':
        username = optarg;
        break;
      case 'l':
        logname = optarg;
        break;
      case 'd':
        if (!optarg) {
          daemonize ^= 1;
        } else {
          daemonize = FUNC1 (optarg) != 0;
        }
        break;
      case 'r':
        if (!optarg) {
          binlog_disabled ++;;
        } else {
          binlog_disabled = FUNC1 (optarg);
        }
        break;
      case 'a':
        binlogname = optarg;
        break;
      case 'B':
        x = FUNC5 (optarg);
        if (x >= 1024 && x < (1LL << 60)) {
          max_binlog_size = x;
        }
        break;
      case '6':
        enable_ipv6 = SM_IPV6;
        break;
      case 200:
        aes_pwd_file = optarg;
        break;
      case 201:
        udp_enabled ++;
        break;
      case 202:
        errno = 0;
        FUNC4 (FUNC1 (optarg));
        if (errno) {
          FUNC6 ("nice");
        }
        break;
      case 203:
        memcache_auto_answer_mode ++;
        break;
      case 204:
        x = FUNC5 (optarg);
        if (x >= (1LL << 20) && x <= (sizeof(long) == 4 ? (3LL << 30) : (100LL << 30))) {
          dynamic_data_buffer_size = x;
        }
        break;        
      case 205:
        udp_drop_probability = FUNC0 (optarg);
        break;
      case 206:
        keyring_enabled = 1;
        break;
      default:
        if (execute (c) < 0) {
          FUNC7 ("Unknown option c = %d\n", c);
          FUNC8 ();
          FUNC2 (2);
        }
        break;
      }
    }
  }
  return 0;
}