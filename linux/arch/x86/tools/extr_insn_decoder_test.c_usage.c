
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 char* prog ;
 int stderr ;

__attribute__((used)) static void usage(void)
{
 fprintf(stderr, "Usage: objdump -d a.out | awk -f objdump_reformat.awk"
  " | %s [-y|-n] [-v]\n", prog);
 fprintf(stderr, "\t-y	64bit mode\n");
 fprintf(stderr, "\t-n	32bit mode\n");
 fprintf(stderr, "\t-v	verbose mode\n");
 exit(1);
}
