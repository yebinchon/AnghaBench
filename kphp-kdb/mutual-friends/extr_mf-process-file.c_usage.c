
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* VERSION_STR ;
 int exit (int) ;
 int printf (char*,char*,char*) ;
 char* progname ;

void usage (void) {
  printf ("%s\nusage: %s [-i<input_file>] [-o<output_file>] [-U<userN>] [-E<engineN>] [-T<to_engine_number>] [-u<username>] [-m<max_size_of_result>]\n"
    "Generates prepared binary file with friends of friends\n"
    "\tserver_num is 3 digit number maybe with leading zeros\n"
   "\t-i\tname of input file with dump from friends engine\n"
   "\t-o\tname of output binary file\n"
   "\t-m\tmaximal number friends of friends, generated for one user on one server in mebibytes\n"
   "\t-T\tnumber of engine for which generate friends of friends\n"
   "\t-U\tmaximal expected total number of users\n"
   "\t-E\tnumber of friend engines\n",
   VERSION_STR, progname);
  exit (2);
}
