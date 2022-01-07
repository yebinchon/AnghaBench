
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*) ;
 char* progname ;

void usage (void) {
  printf ("usage: %s [-v] [-d] [-r] [-p<port>] [-u<username>] [-b<backlog>] [-c<max-conn>] [-l<log-name>] <kfs-binlog-name>\n"
   "\tPerforms generic RPC server/client operations\n"
   "\t-v\toutput statistical and debug information into stderr\n"
   "\t-r\tread-only binlog (don't log new events)\n",
   progname ? progname : "SOMETHING");
  exit(2);
}
