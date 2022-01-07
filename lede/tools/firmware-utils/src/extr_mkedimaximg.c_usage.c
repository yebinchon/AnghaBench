
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EXIT_SUCCESS ;
 int exit (int) ;
 int fprintf (int *,char*,...) ;
 char* progname ;
 int * stderr ;
 int * stdout ;

__attribute__((used)) static void usage(int status)
{
    FILE *stream = (status != EXIT_SUCCESS) ? stderr : stdout;

    fprintf(stream, "Usage: %s [OPTIONS...]\n", progname);
    fprintf(stream,
     "\n"
     "Options:\n"
     "  -s <sig>        set image signature to <sig>\n"
     "  -m <model>      set model to <model>\n"
     "  -i <file>       read input from file <file>\n"
     "  -o <file>       write output to file <file>\n"
     "  -f <flash>      set flash address to <flash>\n"
     "  -S <start>      set start address to <start>\n"
     "  -b              big-endianness mode\n");

    exit(status);
}
