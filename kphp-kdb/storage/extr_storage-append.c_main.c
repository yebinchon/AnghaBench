
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 scalar_t__ change_user (char*) ;
 int exit (int) ;
 int exit_on_file_body_error ;
 int getopt (int,char**,char*) ;
 int http_port ;
 int kprintf (char*,char*) ;
 int memory_repairing ;
 char* optarg ;
 int optind ;
 int storage_binlog_append (char*,char*) ;
 scalar_t__ storage_memory_repair (char*,char*) ;
 int test_mode ;
 int unlink (char*) ;
 int usage () ;
 char* username ;
 int verbosity ;

int main (int argc, char *argv[]) {
  int i;
  while ((i = getopt (argc, argv, "1H:mtuv")) != -1) {
    switch (i) {
      case 'H':
        http_port = atoi (optarg);
      break;
      case 'm':
        memory_repairing = 1;
      break;
      case 't':
        test_mode = 1;
      break;
      case 'u':
        username = optarg;
      break;
      case 'v':
        verbosity++;
        break;
      case '1':
        exit_on_file_body_error = 0;
        break;
    }
  }
  if (argc < optind + 2) {
    usage ();
    return 1;
  }

  if (change_user (username) < 0) {
    kprintf ("fatal: cannot change user to %s\n", username ? username : "(none)");
    exit (1);
  }

  if (memory_repairing) {
    if (storage_memory_repair (argv[optind], argv[optind+1]) < 0) {
      unlink (argv[optind+1]);
      return 1;
    }
    return 0;
  }

  storage_binlog_append (argv[optind], argv[optind+1]);
  return 0;
}
