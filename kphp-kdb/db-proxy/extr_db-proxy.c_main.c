
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;


 void* BACKLOG ;
 scalar_t__ MAX_CONNECTIONS ;
 int aes_load_pwd_file (int ) ;
 void* atoi (void*) ;
 void* backlog ;
 char* config_filename ;
 char* conv_addr (int ,int ) ;
 int daemonize ;
 int do_reload_config (int ) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 int init_dyn_data () ;
 void* logname ;
 scalar_t__ maxconn ;
 int memcache_port ;
 scalar_t__ memcache_sfd ;
 int nice (void*) ;
 void* optarg ;
 int optind ;
 int perror (char*) ;
 int port ;
 char* progname ;
 scalar_t__ raise_file_rlimit (scalar_t__) ;
 int replicator_mode ;
 int round_robin ;
 scalar_t__ server_socket (int,TYPE_1__,void*,int ) ;
 int set_debug_handlers () ;
 TYPE_1__ settings_addr ;
 scalar_t__ sfd ;
 int sql_database ;
 int sql_database_r ;
 int sql_password ;
 int sql_password_r ;
 int sql_username ;
 int sql_username_r ;
 int start_server () ;
 int start_time ;
 int stderr ;
 int test_mode ;
 int time (int ) ;
 int usage () ;
 void* username ;
 scalar_t__ verbosity ;

int main (int argc, char *argv[]) {
  int i, syntax_check = 0;

  set_debug_handlers ();

  progname = argv[0];
  while ((i = getopt (argc, argv, "b:c:l:p:rs:n:dCRThu:v")) != -1) {
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
    case 'p':
      port = atoi(optarg);
      break;
    case 's':
      memcache_port = atoi(optarg);
      break;
    case 'n':
      errno = 0;
      nice (atoi (optarg));
      if (errno) {
        perror ("nice");
      }
      break;
    case 'R':
      sql_username = sql_username_r;
      sql_password = sql_password_r;
      sql_database = sql_database_r;
      replicator_mode++;
      break;
    case 'u':
      username = optarg;
      break;
    case 'l':
      logname = optarg;
      break;
    case 'T':
      test_mode++;
      break;
    case 'C':
      syntax_check = 1;
      break;
    case 'r':
      round_robin++;
      break;
    case 'd':
      daemonize ^= 1;
    }
  }
  if (argc != optind + 1) {
    usage();
    return 2;
  }

  init_dyn_data ();

  config_filename = argv[optind];

  i = do_reload_config (0);

  if (i < 0) {
    fprintf (stderr, "config check failed!\n");
    return -i;
  }

  if (verbosity > 0) {
    fprintf (stderr, "config loaded!\n");
  }

  if (syntax_check) {
    return 0;
  }

  aes_load_pwd_file (0);

  if (raise_file_rlimit(maxconn + 16) < 0 && !test_mode) {
    fprintf (stderr, "fatal: cannot raise open file limit to %d\n", maxconn+16);
    exit(1);
  }

  sfd = server_socket (port, settings_addr, backlog, 0);
  if (sfd < 0) {
    fprintf(stderr, "cannot open server socket at port %d: %m\n", port);
    exit(1);
  }
  if (verbosity) {
    fprintf (stderr, "created listening socket at %s:%d, fd=%d\n", conv_addr(settings_addr.s_addr, 0), port, sfd);
  }

  if (memcache_port) {
    memcache_sfd = server_socket (memcache_port, settings_addr, backlog, 0);
    if (memcache_sfd < 0) {
      fprintf(stderr, "cannot open memcache server socket at port %d: %m\n", memcache_port);
      exit(1);
    }
    if (verbosity) {
      fprintf (stderr, "created memcache listening socket at %s:%d, fd=%d\n", conv_addr(settings_addr.s_addr, 0), memcache_port, memcache_sfd);
    }
  }

  start_time = time(0);

  start_server();

  return 0;
}
