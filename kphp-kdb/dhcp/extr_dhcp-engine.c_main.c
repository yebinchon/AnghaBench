
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEBUG_FILEDUMP ;
 scalar_t__ DEBUG_UDPDUMP ;
 scalar_t__ DHCP_PORT ;
 scalar_t__ PRIVILEGED_TCP_PORTS ;
 int aes_load_pwd_file (int ) ;
 scalar_t__ change_user (char*) ;
 scalar_t__ debug_mode ;
 scalar_t__ dhcp_config_load (char*) ;
 int exit (int) ;
 int f_parse_option ;
 scalar_t__ file_dump (char*) ;
 int init_dyn_data () ;
 int init_msg_buffers (int ) ;
 int kprintf (char*,char*) ;
 char* maxconn ;
 int no_argument ;
 int open_server_sockets () ;
 int optind ;
 int parse_engine_options_long (int,char**,int ) ;
 int parse_option (char*,int ,int ,float,char*) ;
 scalar_t__ port ;
 char* progname ;
 scalar_t__ raise_file_rlimit (char*) ;
 int signals_init () ;
 int start_server () ;
 int start_time ;
 int time (int *) ;
 int usage () ;
 char* username ;

int main (int argc, char *argv[]) {
  signals_init ();
  progname = argv[0];

  parse_option ("debug-udpdump", no_argument, 0, 'U', "listen 67/68 ports and dump received packets to the log");
  parse_option ("debug-filedump", no_argument, 0, 'F', "parse packet from file (filename is given in <config> parameter) and exit");

  parse_engine_options_long (argc, argv, f_parse_option);

  if (argc != optind + 1) {
    usage ();
  }

  if (debug_mode == DEBUG_FILEDUMP) {
    exit ((file_dump (argv[optind]) < 0) ? 1 : 0);
  }

  if (!port || debug_mode == DEBUG_UDPDUMP) {
    port = DHCP_PORT;
  }

  if (port < PRIVILEGED_TCP_PORTS) {
    open_server_sockets ();
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
  init_msg_buffers (0);

  if (dhcp_config_load (argv[optind]) < 0) {
    kprintf ("fatal: fail to load config file '%s'.\n", argv[optind]);
    exit (1);
  }

  start_time = time (((void*)0));
  start_server ();
  return 0;
}
