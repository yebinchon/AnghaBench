
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CLIENT ;
 scalar_t__ SERVER ;
 char* TFTP_PORT ;
 int aes_load_pwd_file (int ) ;
 scalar_t__ change_user (char*) ;
 scalar_t__ check_source_dirname () ;
 int compute_tmp_filename () ;
 int exit (int) ;
 int f_parse_option ;
 int init_dyn_data () ;
 int init_epoll () ;
 int init_msg_buffers (int ) ;
 char* input_filename ;
 int kprintf (char*,char*) ;
 int max_port ;
 char* maxconn ;
 int min_port ;
 scalar_t__ open_udp_server_socket (char*) ;
 int optind ;
 char* output_filename ;
 int parse_engine_options_long (int,char**,int ) ;
 int parse_option (char*,int ,int ,char,char*,...) ;
 char* port ;
 char* progname ;
 scalar_t__ raise_file_rlimit (char*) ;
 int remove_parse_option (char) ;
 int required_argument ;
 scalar_t__ server_sfd ;
 int signals_init () ;
 char* source_dirname ;
 int start_server () ;
 int start_time ;
 int time (int *) ;
 int usage () ;
 char* username ;
 scalar_t__ working_mode ;

int main (int argc, char *argv[]) {
  signals_init ();
  progname = argv[0];

  remove_parse_option ('r');
  remove_parse_option ('a');
  remove_parse_option ('B');

  parse_option ("server-port-range", required_argument, 0, 'R', "sets server port's range. Default range is '%d-%d'. Every UDP connection use one port.", min_port, max_port);
  parse_option ("client-blksize", required_argument, 0, 'B', "sets packet block size");
  parse_option ("client-timeout", required_argument, 0, 'T', "sets timeout in seconds");
  parse_option ("stats-port", required_argument, 0, 'P', "sets port for getting stats using memcache queries");
  parse_engine_options_long (argc, argv, f_parse_option);

  if (argc == optind + 1) {
    working_mode = SERVER;
    source_dirname = argv[optind];
  } else if (argc == optind + 2) {
    input_filename = argv[optind];
    output_filename = argv[optind+1];
    compute_tmp_filename ();
    working_mode = CLIENT;
  } else {
    usage ();
  }

  init_epoll ();

  if (!port) {
    port = TFTP_PORT;
  }

  if (working_mode == SERVER) {
    server_sfd = open_udp_server_socket (port);
    if (server_sfd < 0) {
      kprintf ("Fail to open UDP server socket on the port %d.\n", port);
      exit (1);
    }
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
  if (working_mode == SERVER) {
    if (check_source_dirname () < 0) {
      exit (1);
    }
  }
  init_msg_buffers (0);
  start_time = time (((void*)0));
  start_server ();
  return 0;
}
