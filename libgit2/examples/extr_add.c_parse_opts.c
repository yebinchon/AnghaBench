
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKIP ;
 int UPDATE ;
 int VERBOSE ;
 int fprintf (int ,char*,char*) ;
 int print_usage () ;
 int stderr ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void parse_opts(int *options, int *count, int argc, char *argv[])
{
 int i;

 for (i = 1; i < argc; ++i) {
  if (argv[i][0] != '-')
   break;
  else if (!strcmp(argv[i], "--verbose") || !strcmp(argv[i], "-v"))
   *options |= VERBOSE;
  else if (!strcmp(argv[i], "--dry-run") || !strcmp(argv[i], "-n"))
   *options |= SKIP;
  else if (!strcmp(argv[i], "--update") || !strcmp(argv[i], "-u"))
   *options |= UPDATE;
  else if (!strcmp(argv[i], "-h")) {
   print_usage();
   break;
  } else if (!strcmp(argv[i], "--")) {
   i++;
   break;
  } else {
   fprintf(stderr, "Unsupported option %s.\n", argv[i]);
   print_usage();
  }
 }

 if (argc <= i)
  print_usage();

 *count = i;
}
