
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*) ;
 char* progname ;

void usage (void) {
  printf ("usage: %s [-v] [-w<modulus>:<remainder>] [-u<users-index-file>] <inbox-fname> <outbox-fname>\n"
   "\tResulting index file is written to stdout\n"
   "\t-v\toutput statistical information into stderr\n"
   "\t-w\tprocess only users with user_id MOD modulus == remainder\n"
   "\t-u\tload specified users index file for indexing message senders\n",
   progname);
  exit(2);
}
