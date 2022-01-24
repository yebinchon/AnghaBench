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
 int CLUSTER_MODE_ANTISPAM ; 
 int CLUSTER_MODE_BAYES ; 
 int CLUSTER_MODE_DOT ; 
 int CLUSTER_MODE_FRIENDS ; 
 int CLUSTER_MODE_HINTS ; 
 int CLUSTER_MODE_HINTS_MERGE ; 
 int CLUSTER_MODE_LISTS ; 
 int CLUSTER_MODE_LOGS ; 
 int CLUSTER_MODE_MAGUS ; 
 int CLUSTER_MODE_MERGE ; 
 int CLUSTER_MODE_NEWS ; 
 int CLUSTER_MODE_NEWSR ; 
 int CLUSTER_MODE_NEWS_COMM ; 
 int CLUSTER_MODE_NEWS_G ; 
 int CLUSTER_MODE_NEWS_UG ; 
 int CLUSTER_MODE_PHOTO ; 
 int CLUSTER_MODE_RANDOM_MERGE ; 
 int CLUSTER_MODE_ROUNDROBIN ; 
 int CLUSTER_MODE_SEARCH ; 
 int CLUSTER_MODE_SEARCHX ; 
 int CLUSTER_MODE_STATSX ; 
 int CLUSTER_MODE_SUPPORT ; 
 int CLUSTER_MODE_TARG ; 
 int CLUSTER_MODE_TEMP ; 
 int CLUSTER_MODE_TEXT ; 
 int CLUSTER_MODE_WATCHCAT ; 
 scalar_t__ MAX_CONNECTIONS ; 
 int /*<<< orphan*/  MAX_PING_INTERVAL ; 
 int /*<<< orphan*/  MIN_PING_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* aes_pwd_file ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (void*) ; 
 void* backlog ; 
 char* config_filename ; 
 int daemonize ; 
 int default_cluster_mode ; 
 scalar_t__ default_max_connections ; 
 scalar_t__ default_min_connections ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 long long dynamic_data_buffer_size ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  extension_name ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 void* logname ; 
 scalar_t__ maxconn ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  only_first_cluster ; 
 void* optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  ping_interval ; 
 void* port ; 
 char* progname ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (void*,char*,long long*,char*) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC16 (void*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 void* username ; 
 int /*<<< orphan*/  verbosity ; 
 int /*<<< orphan*/  FUNC20 (int,char*) ; 

int FUNC21 (int argc, char *argv[]) {
  int i;
  long long x;
  char c;

  FUNC13 ();

  progname = argv[0];
  char *custom_encr = 0;
  while ((i = FUNC7 (argc, argv, "b:c:l:p:n:dhu:vfFP:X:E:H:T:y:z:")) != -1) {
    switch (i) {
    case 'v':
      verbosity++;
      break;
    case 'F':
      default_cluster_mode++;
      break;
    case 'f':
      only_first_cluster++;
      break;
    case 'h':
      FUNC19();
      return 2;
    case 'b':
      backlog = FUNC3(optarg);
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
    case 'y':
      i = FUNC3 (optarg);
      if (i >= 1 && i <= 1000) {
	default_min_connections = i;
      }
      break;
    case 'z':
      i = FUNC3 (optarg);
      if (i >= 1 && i <= 1000) {
	default_max_connections = i;
      }
      break;
    case 'p':
      port = FUNC3 (optarg);
      break;
    case 'n':
      errno = 0;
      FUNC10 (FUNC3 (optarg));
      if (errno) {
        FUNC11 ("nice");
      }
      break;
    case 'u':
      username = optarg;
      break;
    case 'l':
      logname = optarg;
      break;
    case 'P':
      aes_pwd_file = optarg;
      break;
    case 'X':
      FUNC17 (extension_name, optarg, 15);
      if (!FUNC16 (optarg, "text")) {
        default_cluster_mode |= CLUSTER_MODE_TEXT;
      } else if (!FUNC16 (optarg, "lists")) {
        default_cluster_mode |= CLUSTER_MODE_LISTS;
      } else if (!FUNC16 (optarg, "hints")) {
        default_cluster_mode |= CLUSTER_MODE_HINTS;
      } else if (!FUNC16 (optarg, "logs")) {
        default_cluster_mode |= CLUSTER_MODE_LOGS;
      } else if (!FUNC16 (optarg, "magus")) {
        default_cluster_mode |= CLUSTER_MODE_MAGUS;
      } else if (!FUNC16 (optarg, "news")) {
        default_cluster_mode |= CLUSTER_MODE_NEWS;
      } else if (!FUNC16 (optarg, "roundrobin")) {
        default_cluster_mode |= CLUSTER_MODE_ROUNDROBIN;
      } else if (!FUNC16 (optarg, "bayes")) {
        default_cluster_mode |= CLUSTER_MODE_BAYES;
      } else if (!FUNC16 (optarg, "antispam")) {
        default_cluster_mode |= CLUSTER_MODE_ANTISPAM;
      } else if (!FUNC16 (optarg, "temp")) {
        default_cluster_mode |= CLUSTER_MODE_TEMP;
      } else if (!FUNC16 (optarg, "support")) {
        default_cluster_mode |= CLUSTER_MODE_SUPPORT;
      } else if (!FUNC16 (optarg, "photo")) {
        default_cluster_mode |= CLUSTER_MODE_PHOTO;
      } else if (!FUNC16 (optarg, "dot")) {
        default_cluster_mode |= CLUSTER_MODE_DOT;
      } else if (!FUNC16 (optarg, "search")) {
        if (default_cluster_mode & CLUSTER_MODE_MERGE) {
          FUNC6 (stderr, "Can not enable to merge extensions");
          return 2;
        }
        default_cluster_mode |= CLUSTER_MODE_SEARCH;
      } else if (!FUNC16 (optarg, "targ")) {
        if (default_cluster_mode & CLUSTER_MODE_MERGE) {
          FUNC6 (stderr, "Can not enable to merge extensions");
          return 2;
        }
        default_cluster_mode |= CLUSTER_MODE_TARG;
      } else if (!FUNC16 (optarg, "news_ug")) {
        if (default_cluster_mode & CLUSTER_MODE_MERGE) {
          FUNC6 (stderr, "Can not enable to merge extensions");
          return 2;
        }
        default_cluster_mode |= CLUSTER_MODE_NEWS_UG;
      } else if (!FUNC16 (optarg, "news_g")) {
        if (default_cluster_mode & CLUSTER_MODE_MERGE) {
          FUNC6 (stderr, "Can not enable to merge extensions");
          return 2;
        }
        default_cluster_mode |= CLUSTER_MODE_NEWS_G;
      } else if (!FUNC16 (optarg, "news_comm")) {
        if (default_cluster_mode & CLUSTER_MODE_MERGE) {
          FUNC6 (stderr, "Can not enable to merge extensions");
          return 2;
        }
        default_cluster_mode |= CLUSTER_MODE_NEWS_COMM;
      } else if (!FUNC16 (optarg, "newsr")) {
        if (default_cluster_mode & CLUSTER_MODE_MERGE) {
          FUNC6 (stderr, "Can not enable to merge extensions");
          return 2;
        }
        default_cluster_mode |= CLUSTER_MODE_NEWSR;
      } else if (!FUNC16 (optarg, "statsx")) {
        if (default_cluster_mode & CLUSTER_MODE_MERGE) {
          FUNC6 (stderr, "Can not enable to merge extensions");
          return 2;
        }
        default_cluster_mode |= CLUSTER_MODE_STATSX;
      } else if (!FUNC16 (optarg, "friends")) {
        if (default_cluster_mode & CLUSTER_MODE_MERGE) {
          FUNC6 (stderr, "Can not enable to merge extensions");
          return 2;
        }
        default_cluster_mode |= CLUSTER_MODE_FRIENDS;
      } else if (!FUNC16 (optarg, "searchx")) {
        if (default_cluster_mode & CLUSTER_MODE_MERGE) {
          FUNC6 (stderr, "Can not enable to merge extensions");
          return 2;
        }
        default_cluster_mode |= CLUSTER_MODE_SEARCHX;
      } else if (!FUNC16 (optarg, "watchcat")) {
        default_cluster_mode |= CLUSTER_MODE_WATCHCAT;
      } else if (!FUNC16 (optarg, "hints_merge")) {
        if (default_cluster_mode & CLUSTER_MODE_MERGE) {
          FUNC6 (stderr, "Can not enable to merge extensions");
          return 2;
        }
        default_cluster_mode |= CLUSTER_MODE_HINTS_MERGE;
      } else if (!FUNC16 (optarg, "random_merge")) {
        if (default_cluster_mode & CLUSTER_MODE_MERGE) {
          FUNC6 (stderr, "Can not enable to merge extensions");
          return 2;
        }
        default_cluster_mode |= CLUSTER_MODE_RANDOM_MERGE;
      } else {
        FUNC19 ();
        return 2;
      }
      break;
    case 'T':
      ping_interval = FUNC2 (optarg);
      if (ping_interval < MIN_PING_INTERVAL || ping_interval > MAX_PING_INTERVAL) {
	FUNC19 ();
	return 2;
      }
      break;
    case 'E':
      custom_encr = optarg;
      break;
    case 'd':
      daemonize ^= 1;
      break;
    case 'H':
      c = 0;
      FUNC1 (FUNC14 (optarg, "%lld%c", &x, &c) >= 1);
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
    }
  }
  if (argc != optind + 1) {
    FUNC19();
    return 2;
  }

  if (default_max_connections < default_min_connections) {
    FUNC9 ("WARNING: adjusted default maximum number of connections to be equal to default minimum number of connections\n");
    default_max_connections = default_min_connections;
  }

  FUNC8 ();

  if (FUNC12 (maxconn + 16) < 0) {
    FUNC6 (stderr, "fatal: cannot raise open file limit to %ld\n", maxconn+16);
    FUNC5 (1);
  }

  config_filename = argv[optind];

  i = FUNC4 (0);

  if (i < 0) {
    FUNC6 (stderr, "config check failed!\n");
    return -i;
  }

  FUNC20 (1, "config loaded!\n");

  if (custom_encr) {
    FUNC0 (custom_encr);
  } else {
    FUNC0 (aes_pwd_file);
  }

  start_time = FUNC18 (0);

  FUNC15 ();

  return 0;
}