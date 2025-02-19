
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*) ;
 char* progname ;

void usage (void) {
  printf ("usage: %s [-u] [-o<output_file>] [-U<userN>] [-E<engineN>] [-T<this_engine_number>] [-F<friends.dump>] [-B<exceptions.dump>] [-t]\n"
    "Merge engineN binary files \"from<server_num>\" on target server with friends of friends\n"
    "  server_num is 3 digit number with leading zeros\n"
   "\t-o\tname of output binary file\n"
   "\t-U\tmaximal expected total number of users\n"
   "\t-E\tnumber of friend engines\n"
   "\t-T\tnumber of this engine\n"
   "\t-F\tname of file with dump from friends engine\n"
   "\t-B\tname of file with dump from mutual-friends engine\n"
   "\t-t\ttest mode on (answer will be written to stdout in readable format)\n",
   progname);
  exit (2);
}
