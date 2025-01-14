
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* port; } ;


 scalar_t__ MAX_CONNECTIONS ;
 TYPE_1__ PID ;
 int aes_load_pwd_file (char*) ;
 void* atof (void*) ;
 void* atoi (void*) ;
 int daemonize ;
 int exit (int) ;
 int fprintf (int ,char*,scalar_t__) ;
 int getopt (int,char**,char*) ;
 int init_dyn_data () ;
 void* logname ;
 scalar_t__ maxconn ;
 void* medium_delay ;
 void* optarg ;
 int optind ;
 void* port ;
 char* progname ;
 scalar_t__ raise_file_rlimit (scalar_t__) ;
 int read_network_file (char*) ;
 int set_debug_handlers () ;
 void* slow_delay ;
 int start_server () ;
 int start_time ;
 int stderr ;
 int strncpy (char*,void*,int) ;
 int time (int ) ;
 int usage () ;
 void* username ;
 int verbosity ;

int main (int argc, char *argv[]) {
  int i;

  set_debug_handlers ();

  char encr_file[256];
  int custom_encr = 0;
  progname = argv[0];
  char network_desc_file[256];
  while ((i = getopt (argc, argv, "vdc:E:p:N:hu:l:S:M:")) != -1) {
    switch (i) {
    case 'v':
      verbosity++;
      break;
    case 'c':
      maxconn = atoi(optarg);
      if (maxconn <= 0 || maxconn > MAX_CONNECTIONS) {
        maxconn = MAX_CONNECTIONS;
      }
      break;
    case 'E':
      strncpy (encr_file, optarg, 255);
      custom_encr = 1;
      break;
    case 'N':
      strncpy (network_desc_file, optarg, 255);
      break;
    case 'p':
      port = atoi(optarg);
      break;
    case 'u':
      username = optarg;
      break;
    case 'l':
      logname = optarg;
      break;
    case 'S':
      slow_delay = atof(optarg);
      break;
    case 'M':
      medium_delay = atof(optarg);
      break;
    case 'h':
      usage ();
      exit (1);
      break;
    case 'd':
      daemonize ^= 1;
    }
  }
  if (argc != optind) {
    usage();
    return 2;
  }

  if (raise_file_rlimit(maxconn + 16) < 0) {
    fprintf (stderr, "fatal: cannot raise open file limit to %d\n", maxconn+16);
    exit(1);
  }
  init_dyn_data();

  read_network_file (network_desc_file);
  PID.port = port;


  if (!custom_encr) {
    aes_load_pwd_file (0);
  } else {
    aes_load_pwd_file (encr_file);
  }

  start_time = time(0);

  start_server();

  return 0;
}
