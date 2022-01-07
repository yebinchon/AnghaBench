
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 char* progname ;
 int stderr ;

void usage (void) {
  fprintf (stderr, "usage:\t%s <binlog-file>\n"
                   "\tConverts lists binlog into text format.\n"
                   "\tflags:\n"
                   "\t-t<min_utime,max_utime>\tset dumping range, unix times should separated by single comma\n"
                   "\t-r<seconds-ago>\n"
                   "\t-a\tdump timestamp in human readable format\n"
   ,progname);
}
