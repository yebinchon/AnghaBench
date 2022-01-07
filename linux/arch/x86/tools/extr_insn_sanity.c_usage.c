
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 char* prog ;
 int stderr ;

__attribute__((used)) static void usage(const char *err)
{
 if (err)
  fprintf(stderr, "%s: Error: %s\n\n", prog, err);
 fprintf(stderr, "Usage: %s [-y|-n|-v] [-s seed[,no]] [-m max] [-i input]\n", prog);
 fprintf(stderr, "\t-y	64bit mode\n");
 fprintf(stderr, "\t-n	32bit mode\n");
 fprintf(stderr, "\t-v	Verbosity(-vv dumps any decoded result)\n");
 fprintf(stderr, "\t-s	Give a random seed (and iteration number)\n");
 fprintf(stderr, "\t-m	Give a maximum iteration number\n");
 fprintf(stderr, "\t-i	Give an input file with decoded binary\n");
 exit(1);
}
