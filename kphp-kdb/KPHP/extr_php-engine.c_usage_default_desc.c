
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

void usage_default_desc (void) {
  printf ("\t-d\tdaemonize\n"
    "\t-k\tlock paged memory\n"
    "\t-v\toutput statistical and debug information into stderr\n"
    "\t-m<memory>\tmaximal size of used memory in megabytes not including zmemory for struct conn_query in mebibytes\n"
    "\t-u<username>\tuser name\n"
    "\t-b<backlog>\tset backlog\n"
    "\t-c<max-conn>\tset maximum connections number\n"
    "\t-l<log-name>\tset log name\n");
}
