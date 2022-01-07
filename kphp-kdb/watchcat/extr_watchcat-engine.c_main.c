
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_CONNECTIONS ;
 int PRIVILEGED_TCP_PORTS ;
 int aes_load_pwd_file (int *) ;
 int backlog ;
 scalar_t__ change_user (char*) ;
 int dl_set_debug_handlers () ;
 int dynamic_data_buffer_size ;
 int enable_is_letter_sigils () ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int free_all () ;
 scalar_t__ geteuid () ;
 int init_all () ;
 int init_dyn_data () ;
 int init_is_letter () ;
 int interactive ;
 int maxconn ;
 int no_argument ;
 void* now ;
 int optind ;
 int parse_engine_options_long (int,char**,int ) ;
 int parse_option (char*,int ,int *,char,char*,...) ;
 int port ;
 char* progname ;
 int queue_port ;
 scalar_t__ raise_file_rlimit (int) ;
 int remove_parse_option (int) ;
 int required_argument ;
 scalar_t__ server_socket (int,int ,int ,int ) ;
 int settings_addr ;
 scalar_t__ sfd ;
 int start_server () ;
 void* start_time ;
 int stderr ;
 int stem_init () ;
 void* time (int *) ;
 int usage () ;
 scalar_t__ use_stemmer ;
 char* username ;
 int watchcat_parse_option ;

int main (int argc, char *argv[]) {
  dl_set_debug_handlers ();
  progname = argv[0];
  now = time (((void*)0));

  remove_parse_option ('a');
  remove_parse_option ('B');
  remove_parse_option ('r');
  remove_parse_option (204);
  parse_option ("memory-limit", required_argument, ((void*)0), 'm', "<memory-limit> sets maximal size of used memory not including zmemory in mebibytes");
  parse_option ("queue-port", required_argument, 0, 'P', "<port> port number for communication with queue (default %d)", queue_port);
  parse_option ("lock-memory", no_argument, ((void*)0), 'k', "lock paged memory");
  parse_option ("stemmer", no_argument, 0, 'S', "enable stemmer");

  parse_engine_options_long (argc, argv, watchcat_parse_option);
  if (argc != optind) {
    usage();
    return 2;
  }

  init_is_letter();
  enable_is_letter_sigils();
  if (use_stemmer) {
    stem_init();
  }

  dynamic_data_buffer_size = (1 << 20);
  init_dyn_data();

  if (!username && maxconn == MAX_CONNECTIONS && geteuid()) {
    maxconn = 1000;
  }

  if (raise_file_rlimit (maxconn + 16) < 0) {
    fprintf (stderr, "fatal: cannot raise open file limit to %d\n", maxconn + 16);
    exit (1);
  }

  if (port < PRIVILEGED_TCP_PORTS) {
    sfd = server_socket (port, settings_addr, backlog, 0);
    if (sfd < 0) {
      fprintf (stderr, "cannot open server socket at port %d: %m\n", port);
      exit (1);
    }
  }

  aes_load_pwd_file (((void*)0));

  if (change_user (username) < 0 && !interactive) {
    fprintf (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    exit (1);
  }

  init_all();
  start_time = time (((void*)0));

  start_server();

  free_all();
  return 0;
}
