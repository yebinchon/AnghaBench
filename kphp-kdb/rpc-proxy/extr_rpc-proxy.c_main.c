
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ port; } ;


 TYPE_1__ PID ;
 int PING_INTERVAL ;
 scalar_t__ PRIVILEGED_TCP_PORTS ;
 int aes_load_pwd_file (int ) ;
 int aes_pwd_file ;
 int backlog ;
 scalar_t__ bname ;
 char* config_filename ;
 int do_reload_config (int ) ;
 scalar_t__ enable_ipv6 ;
 int exit (int) ;
 int f_parse_option ;
 int fprintf (int ,char*,...) ;
 int get_my_ipv4 () ;
 int init_dyn_data () ;
 int init_server_PID (int ,scalar_t__) ;
 int kprintf (char*,scalar_t__) ;
 int maxconn ;
 int no_argument ;
 int optind ;
 int parse_engine_options_long (int,char**,int ) ;
 int parse_option (char*,int ,int ,char,char*,...) ;
 scalar_t__ port ;
 char* progname ;
 scalar_t__ raise_file_rlimit (int) ;
 int read_binlog (scalar_t__) ;
 int remove_parse_option (char) ;
 int required_argument ;
 int rpc_disable_crc32_check ;
 scalar_t__ server_socket (scalar_t__,int ,int ,scalar_t__) ;
 int set_debug_handlers () ;
 int settings_addr ;
 scalar_t__ sfd ;
 int start_server () ;
 int start_time ;
 int stderr ;
 int test_mode ;
 int time (int ) ;
 int usage () ;
 scalar_t__ usfd ;
 int vkprintf (int,char*) ;

int main (int argc, char *argv[]) {
  rpc_disable_crc32_check = 1;
  int i;

  set_debug_handlers ();

  progname = argv[0];

  remove_parse_option ('B');
  parse_option ("first-cluster-only", required_argument, 0, 'f', "only first cluster");
  parse_option ("test-mode", no_argument, 0, 'T', 0);
  parse_option ("tcp-buffers", no_argument, 0, 'N', "new tcp buffers");
  parse_option ("crc32-mode", required_argument, 0, 'C', "crc32 mode: bit 0 disables crc32 check, bit 1 disables crc32 send (sends 0)");
  parse_option ("heap-size", required_argument, 0, 'H', "sets heap size. Supports K/M/G/T modifiers");
  parse_option ("max-binlog-size", required_argument, 0, 'S', "sets maximal binlog slice size. Supports K/M/G/T modifiers");
  parse_option ("ping-interval", required_argument, 0, 'y', "sets ping interval (only in tcp connections) (default %lf)", PING_INTERVAL);
  parse_option ("binlog-enable", required_argument, 0, 'B', "enables binlog mode. argument is binlog name");
  parse_option ("drop-probability", required_argument, 0, 'Q', "sets probability of dropping transmitted packet");
  parse_option (0, required_argument, 0, 'n', "sets niceness");

  parse_engine_options_long (argc, argv, f_parse_option);
  if (argc != optind + 1) {
    usage();
    return 2;
  }

  PID.port = port;
  init_dyn_data ();
  init_server_PID (get_my_ipv4 (), port);

  if (raise_file_rlimit (maxconn + 16) < 0 && !test_mode) {
    fprintf (stderr, "fatal: cannot raise open file limit to %d\n", maxconn+16);
    exit (1);
  }

  config_filename = argv[optind];

  i = do_reload_config (0);

  if (i < 0) {
    fprintf (stderr, "config check failed!\n");
    return -i;
  }

  vkprintf (1, "config loaded!\n");

  aes_load_pwd_file (aes_pwd_file);

  if (port < PRIVILEGED_TCP_PORTS) {
    sfd = server_socket (port, settings_addr, backlog, enable_ipv6);
    if (sfd < 0) {
      kprintf ("cannot open server socket at port %d: %m\n", port);
      exit (1);
    }
    usfd = server_socket (port, settings_addr, backlog, enable_ipv6 + 1);
    if (usfd < 0) {
      kprintf ("cannot open udp server socket at port %d: %m\n", port);
      exit (1);
    }
  }

  if (bname) {
    read_binlog (bname);
  }
  start_time = time (0);

  start_server ();

  return 0;
}
