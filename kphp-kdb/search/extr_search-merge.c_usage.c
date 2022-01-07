
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*) ;
 char* progname ;

void usage (void) {
  printf ("usage: %s [-v] [-p<port>] [-u<username>] [-b<backlog>] [-c<max-conn>] [-l<log-name>] <cluster-descr-file>\n"
    "\tRedistributes search queries to servers listed in <cluster-descr-file>\n"
    "\t-v\toutput statistical and debug information into stderr\n",
    progname);
  exit(2);
}
