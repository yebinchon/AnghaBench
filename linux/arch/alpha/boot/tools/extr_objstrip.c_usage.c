
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 char* prog_name ;
 int stderr ;

__attribute__((used)) static void
usage (void)
{
    fprintf(stderr,
     "usage: %s [-v] -p file primary\n"
     "       %s [-vb] file [secondary]\n", prog_name, prog_name);
    exit(1);
}
