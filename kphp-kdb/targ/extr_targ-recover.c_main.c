
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* BACKLOG ;
 scalar_t__ MAX_CONNECTIONS ;
 int assert (int) ;
 void* atoi (void*) ;
 void* backlog ;
 int daemonize ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 void* hostname ;
 int init_dyn_data () ;
 void* logname ;
 void* max_ad_id ;
 scalar_t__ maxconn ;
 int nice (void*) ;
 void* optarg ;
 int optind ;
 int perror (char*) ;
 void* port ;
 char* progname ;
 scalar_t__ raise_file_rlimit (scalar_t__) ;
 int srand48 (int ) ;
 int start_server () ;
 int start_time ;
 int stderr ;
 void* suffix ;
 int test_mode ;
 int time (int ) ;
 int usage () ;
 void* username ;
 int verbosity ;

int main (int argc, char *argv[]) {
  int i;

  srand48 (time (0));

  progname = argv[0];
  while ((i = getopt (argc, argv, "a:b:c:l:m:n:p:t:u:Tdhv")) != -1) {
    switch (i) {
    case 'v':
      verbosity++;
      break;
    case 'h':
      usage();
      return 2;
    case 'b':
      backlog = atoi(optarg);
      if (backlog <= 0) {
        backlog = BACKLOG;
      }
      break;
    case 'c':
      maxconn = atoi(optarg);
      if (maxconn <= 0 || maxconn > MAX_CONNECTIONS) {
 maxconn = MAX_CONNECTIONS;
      }
      break;
    case 'n':
      errno = 0;
      nice (atoi (optarg));
      if (errno) {
        perror ("nice");
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
      port = atoi (optarg);
      break;
    case 'm':
      max_ad_id = atoi (optarg);
      assert (max_ad_id > 0);
      break;
    case 'a':
      suffix = optarg;
      break;
    case 'd':
      daemonize ^= 1;
    }
  }
  if (argc != optind) {
    usage();
    return 2;
  }

  if (!suffix) {
    fprintf (stderr, "fatal: supply a suffix with -a switch\n");
    exit (1);
  }


  init_dyn_data ();

  if (raise_file_rlimit (maxconn + 16) < 0 && !test_mode) {
    fprintf (stderr, "fatal: cannot raise open file limit to %d\n", maxconn+16);
    exit (1);
  }

  start_time = time(0);

  start_server();

  return 0;
}
