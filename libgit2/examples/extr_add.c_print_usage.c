
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void print_usage(void)
{
 fprintf(stderr, "usage: add [options] [--] file-spec [file-spec] [...]\n\n");
 fprintf(stderr, "\t-n, --dry-run    dry run\n");
 fprintf(stderr, "\t-v, --verbose    be verbose\n");
 fprintf(stderr, "\t-u, --update     update tracked files\n");
 exit(1);
}
