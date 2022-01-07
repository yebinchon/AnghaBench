
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EXIT_SUCCESS ;
 int exit (int) ;
 int fprintf (int *,char*,...) ;
 int * stderr ;
 int * stdout ;

__attribute__((used)) static void
usage(const char *progname, int status)
{
 FILE *stream = (status != EXIT_SUCCESS) ? stderr : stdout;
 int i;

 fprintf(stream, "Usage: %s [OPTIONS...]\n", progname);
 fprintf(stream, "\n"
   "Options:\n"
   "  -f <file>		generate a factory flash image <file>\n"
   "  -s <file>		generate a sysupgrade flash image <file>\n"
   "  -h			show this screen\n");
 exit(status);
}
