
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int replica_prefix; } ;
struct TYPE_7__ {TYPE_1__* info; } ;
struct TYPE_6__ {int filename; } ;


 TYPE_2__* Binlog ;
 scalar_t__ PRIVILEGED_TCP_PORTS ;
 int binlog_disabled ;
 int binlog_load_time ;
 int binlogname ;
 scalar_t__ change_user (char*) ;
 int clear_log () ;
 int clear_read_log () ;
 int clear_write_log () ;
 char* config_name ;
 scalar_t__ dns_config_load (char*,int,int *) ;
 int dns_reset () ;
 int dynamic_data_buffer_size ;
 scalar_t__ engine_preload_filelist (int ,int *) ;
 TYPE_3__* engine_replica ;
 int exit (int) ;
 int f_parse_option ;
 int include_binlog_name ;
 int init_dyn_data () ;
 int init_log_data (int ,int ,int ) ;
 int init_msg_buffers (int ) ;
 int jump_log_pos ;
 int keep_going ;
 int kprintf (char*,char*,...) ;
 scalar_t__ maxconn ;
 int mytime () ;
 int no_argument ;
 TYPE_2__* open_binlog (TYPE_3__*,int ) ;
 int open_server_sockets () ;
 size_t optind ;
 int * output_binlog_name ;
 int parse_engine_options_long (int,char**,int ) ;
 int parse_option (char*,int ,int ,char,char*) ;
 scalar_t__ port ;
 char* progname ;
 scalar_t__ raise_file_rlimit (scalar_t__) ;
 int remove_parse_option (int) ;
 scalar_t__ replay_log (int ,int) ;
 int required_argument ;
 int signals_init () ;
 int srand48 (int ) ;
 int start_server () ;
 int start_time ;
 scalar_t__ stats_port ;
 int time (int *) ;
 int usage () ;
 char* username ;
 int vkprintf (int,char*) ;

int main (int argc, char *argv[]) {
  signals_init ();
  progname = argv[0];

  remove_parse_option ('r');
  remove_parse_option ('B');
  remove_parse_option (203);
  parse_option ("workers", required_argument, 0, 'M', "sets number of additional worker processes");
  parse_option ("max-response-records", required_argument, 0, 'R', "limits max records number in the response");
  parse_option ("stats-port", required_argument, 0, 'P', "sets port for getting stats using memcache queries");
  parse_option ("output", required_argument, 0, 'E', "sets exported binlog name for converting config to binlog");
  parse_option ("keep-going", no_argument, 0, 'k', "reports as much config errors as possible");
  parse_engine_options_long (argc, argv, f_parse_option);

  if (output_binlog_name) {
    port = stats_port = 0;
  }
  if (!port && output_binlog_name == ((void*)0)) {
    usage ();
  }
  config_name = argv[optind];

  if (port > 0 && port < PRIVILEGED_TCP_PORTS) {
    open_server_sockets ();
  }

  if (raise_file_rlimit (maxconn + 16) < 0) {
    kprintf ("fatal: cannot raise open file limit to %d\n", maxconn + 16);
    exit (1);
  }

  if (change_user (username) < 0) {
    kprintf ("fatal: cannot change user to %s\n", username ? username : "(none)");
    exit (1);
  }

  srand48 (time (0));
  dynamic_data_buffer_size = 64 << 20;
  init_dyn_data ();
  dns_reset ();

  if (dns_config_load (config_name, !keep_going, output_binlog_name) < 0) {
    exit (1);
  }
  if (output_binlog_name) {
    exit (0);
  }
  if (include_binlog_name) {
    binlog_load_time = -mytime ();
    binlog_disabled = 1;
    if (engine_preload_filelist (include_binlog_name, ((void*)0)) < 0) {
      kprintf ("cannot open binlog files for %s\n", include_binlog_name);
      exit (1);
    }
    Binlog = open_binlog (engine_replica, jump_log_pos);
    if (!Binlog) {
      kprintf ("fatal: cannot find binlog for %s, log position %lld\n", engine_replica->replica_prefix, jump_log_pos);
      exit (1);
    }
    binlogname = Binlog->info->filename;
    clear_log ();
    init_log_data (jump_log_pos, 0, 0);
    vkprintf (1, "replay log events started\n");
    if (replay_log (0, 1) < 0) {
      exit (1);
    }
    vkprintf (1, "replay log events finished\n");
    binlog_load_time += mytime ();
    if (!binlog_disabled) {
      clear_read_log ();
    }
    clear_write_log ();
  }
  init_msg_buffers (0);
  start_time = time (((void*)0));
  start_server ();
  return 0;
}
