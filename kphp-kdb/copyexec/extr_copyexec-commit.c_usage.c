
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FullVersionStr ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int usage_actions () ;

void usage (void) {
  fprintf (stderr, "%s\n", FullVersionStr);
  fprintf (stderr, "Commits transaction to the auxiliary binlog.\n");
  fprintf (stderr,
           "./copyexec-commit -P<private-key-prefix> -T<transaction-dir> [-u<username>] [-v] [-l<log-name>] <binlog>\n"
                   "\t-P<private-key-prefix>\t(mandatory option), full private key name is concatenation of <private-key-prefix> and key_id found in action list file.\n"
                   "\t-T<transaction-dir>\t(mandatory option), set transaction dir, which should contain \"actions\" file and other tmp files\n"
                   "\t-1\tcompress snapshot faster\n"
                   "\t-9\tcompress snapshot better (default)\n"
                   "\t-M<max-transaction-size>\n"
                   "\t-E<volume-id>\tcreates new empty binlog, volume-id is a string.\n"
                   "\t-u<username>\tused only in create empty binlog mode\n"
                   "\t-v\tincrease verbosity level\n\n"
                   );
  usage_actions ();
  exit (2);
}
