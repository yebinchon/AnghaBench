
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*) ;
 char* progname ;

void usage (void) {
  printf ("usage: %s [-u] [-o<output_file>] [-F<first_engine_num>][-N<engines_cnt>] <stat_name>\n"
    "Merge engineN binary files \"<stat_name><server_num>\"\n"
    "  server_num is 3 digit number with leading zeros\n"
   "\t-o\tname of output file\n"
   "\t-F<first_engine_num>\tnumber of first engine, default 0\n"
   "\t-N<engines_cnt>\tnumber of last engine plus 1\n",
   progname);
  exit (2);
}
