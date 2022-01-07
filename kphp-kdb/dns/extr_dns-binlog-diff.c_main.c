
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zone_t ;


 int Binlog ;
 int add_logevents ;
 scalar_t__ append_to_binlog (int ) ;
 int assert (int) ;
 char* atoi (void*) ;
 int binlog_disabled ;
 int * binlog_load (char*,int) ;
 int binlogname ;
 scalar_t__ change_user (char*) ;
 int delete_logevents ;
 int exit (int) ;
 int flush_binlog_last () ;
 int fprintf (int ,char*,int) ;
 int getopt (int,char**,char*) ;
 int kprintf (char*,char*) ;
 scalar_t__ log_readto_pos ;
 void* logname ;
 char* maxconn ;
 void* optarg ;
 int optind ;
 char* progname ;
 scalar_t__ raise_file_rlimit (char*) ;
 int stderr ;
 int stdout ;
 int sync_binlog (int) ;
 int usage () ;
 char* username ;
 scalar_t__ verbosity ;
 int zones_merge (int *,int *) ;

int main (int argc, char *argv[]) {
  int c;

  progname = argv[0];

  while ((c = getopt (argc, argv, "c:l:u:v")) != -1) {
    switch (c) {
    case 'c':
      maxconn = atoi (optarg);
      break;
    case 'l':
      logname = optarg;
      break;
    case 'u':
      username = optarg;
      break;
    case 'v':
      verbosity++;
      break;
    default:
      fprintf (stderr, "Unimplemented option %c\n", c);
      usage ();
    }
  }
  if (argc != optind + 2) {
    usage ();
    return 2;
  }

  if (raise_file_rlimit (maxconn + 16) < 0) {
    kprintf ("fatal: cannot raise open file limit to %d\n", maxconn + 16);
    exit (1);
  }

  if (change_user (username) < 0) {
    kprintf ("fatal: cannot change user to %s\n", username ? username : "(none)");
    exit (1);
  }



  zone_t *new_zones = binlog_load (argv[optind], 1);
  assert (new_zones);
  zone_t *old_zones = binlog_load (argv[optind+1], 0);
  assert (old_zones);

  assert (binlogname);
  assert (!binlog_disabled);
  assert (append_to_binlog (Binlog) == log_readto_pos);

  zones_merge (new_zones, old_zones);
  flush_binlog_last ();
  sync_binlog (2);
  if (verbosity) {
    fprintf (stdout, "%lld add record logevents.\n", add_logevents);
    fprintf (stdout, "%lld delete record logevents.\n", delete_logevents);
  }

  return 0;
}
