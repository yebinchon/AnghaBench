
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FullVersionStr ;
 int exit (int) ;
 int max_lru_size ;
 int printf (char*,...) ;

void usage (void) {
  printf ("%s\n", FullVersionStr);
  printf ("usage: [-v] [-p<port>] [-u<username>] [-M<max-memory-transactions>] [-b<backlog>] [-c<max-conn>] [-a<binlog-name>] [-l<log-name>] [-E] <binlog>\n"
   "\tCollects transactions results from copyexec-engine.\n"
    "\t-E\tcreate copyexec-results empty binlog\n"
    "\t-M<max-memory-transactions>\tlimit memory transaction number (default value is %d).\n"
    "\t-v\toutput statistical and debug information into stderr\n", max_lru_size);
  exit (2);
}
