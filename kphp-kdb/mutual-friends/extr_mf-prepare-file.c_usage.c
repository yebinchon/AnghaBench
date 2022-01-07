
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*) ;
 char* progname ;

void usage (void) {
  printf ("usage: %s [-u] [-i<input_file>] [-o<output_file>] [-U<userN>] [-E<engineN>]\n"
    "Prepares binary files (default \"to<server_num>.tmp\") with friends of friends\n"
    "  server_num is 3 digit number maybe with leading zeros\n"
   "\t-i\tname of input binary file from\n"
   "\t-o\tname of output binary file\n"
   "\t-U\tmaximal expected total number of users\n"
   "\t-E\tnumber of friend engines\n",
   progname);
  exit (2);
}
