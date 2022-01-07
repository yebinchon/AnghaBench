
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Binlog ;
 int FALSE ;
 int SIGINT ;
 int SIGTERM ;
 int TRUE ;
 int antispam_change_user () ;
 int antispam_engine_common_init_part (char*) ;
 scalar_t__ append_to_binlog (int ) ;
 int assert (int) ;
 char* binlogname ;
 int clean_binlog_file () ;
 int dl_get_memory_used () ;
 int dyn_used_memory () ;
 int finish_all () ;
 int flush_binlog_forced (int) ;
 int fprintf (int ,char*,int,int,long long,int ) ;
 int getopt (int,char**,char*) ;
 int import_patterns_dump (char const*) ;
 scalar_t__ log_pos ;
 scalar_t__ log_readto_pos ;
 long long max_binlog_size ;
 int mt_test () ;
 void* optarg ;
 int optind ;
 char* progname ;
 int records_processed ;
 int records_read ;
 int sigint_handler ;
 int signal (int ,int ) ;
 int sigterm_handler ;
 int sscanf (void*,char*,long long*,char*) ;
 int st_printf (char*,int ,int ) ;
 int stderr ;
 int usage () ;
 void* username ;
 int verbosity ;

int main (int argc, char **argv) {
  progname = argv[0];

  int i;
  long long x = 0;
  char c = 0;
  bool binlog_file_need_cleaning = FALSE;
  char const *patterns_name = 0;
  while ((i = getopt (argc, argv, "hvu:B:p:c")) != -1) {
    switch (i) {
    case 'h':
      usage();
      return 2;
    case 'v':
      verbosity++;
      break;
    case 'u':
      username = optarg;
      break;
    case 'B':
      assert (sscanf (optarg, "%lld%c", &x, &c) >= 1);
      switch (c | 0x20) {
      case 'k': x <<= 10; break;
      case 'm': x <<= 20; break;
      case 'g': x <<= 30; break;
      case 't': x <<= 40; break;
      default: assert (c == 0x20);
      }
      if (x >= 1024 && x < (1LL << 60)) {
        max_binlog_size = x;
      }
      break;
    case 'p':
      patterns_name = optarg;
      break;
    case 'c':
      binlog_file_need_cleaning = TRUE;
      break;
    }
  }

  if (argc != optind + 1) {
    usage();
    return 2;
  }

  antispam_change_user ();

  binlogname = argv[optind];
  if (binlog_file_need_cleaning) {
    clean_binlog_file ();
  }
  antispam_engine_common_init_part ("" );

  assert (append_to_binlog (Binlog) == log_readto_pos);

  signal (SIGINT, sigint_handler);
  signal (SIGTERM, sigterm_handler);


  if (patterns_name) {
    import_patterns_dump (patterns_name);
  }

  flush_binlog_forced (1);



  if (verbosity > 0) {
    fprintf (stderr, "read: %d records read, %d processed\nwritten: log_pos=%lld, used_z_memory=%ld\n",
             records_read, records_processed, (long long)log_pos, dyn_used_memory ());
  }

  finish_all ();

  if (verbosity > 2) {
    st_printf ("Memory lost: z_malloc = $3%ld$^, dl_malloc = $3%lld$^\n", dyn_used_memory (), dl_get_memory_used ());
  }

  mt_test();
  return 0;
}
