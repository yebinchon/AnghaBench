
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*) ;
 char* progname ;

void usage (void) {
  printf ("usage: %s [-u] [-o<output_file>] [-N<engineN>] [-d<dump_name>]\n"
    "Merge engineN binary files \"<dump_name><server_num>.dump\"\n"
   "\t-d\tprefix of dump files, delauit is \"dump\"\n"
   "\t-o\tname of output binary file\n"
   "\t-F\tnumber of first engine, default 0\n"
   "\t-N\tnumber of last engine plus 1\n",
   progname);
  exit (2);
}
