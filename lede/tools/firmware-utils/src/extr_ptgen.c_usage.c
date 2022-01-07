
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void usage(char *prog)
{
 fprintf(stderr, "Usage: %s [-v] -h <heads> -s <sectors> -o <outputfile> [-a 0..4] [-l <align kB>] [[-t <type>] -p <size>...] \n", prog);
 exit(EXIT_FAILURE);
}
