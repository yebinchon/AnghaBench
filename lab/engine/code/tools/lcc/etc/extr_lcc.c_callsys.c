
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char**) ;
 int fprintf (int ,char*,...) ;
 char** malloc (int) ;
 int perror (char*) ;
 char* progname ;
 char** realloc (char**,int) ;
 int spawn (char*,char**) ;
 int stderr ;
 char* strchr (char*,char) ;
 char* stringf (char*,...) ;
 char* strsave (char*) ;
 int verbose ;

__attribute__((used)) static int callsys(char **av) {
 int i, status = 0;
 static char **argv;
 static int argc;
 char *executable;

 for (i = 0; av[i] != ((void*)0); i++)
  ;
 if (i + 1 > argc) {
  argc = i + 1;
  if (argv == ((void*)0))
   argv = malloc(argc*sizeof *argv);
  else
   argv = realloc(argv, argc*sizeof *argv);
  assert(argv);
 }
 for (i = 0; status == 0 && av[i] != ((void*)0); ) {
  int j = 0;
  char *s = ((void*)0);
  for ( ; av[i] != ((void*)0) && (s = strchr(av[i], '\n')) == ((void*)0); i++)
   argv[j++] = av[i];
  if (s != ((void*)0)) {
   if (s > av[i])
    argv[j++] = stringf("%.*s", s - av[i], av[i]);
   if (s[1] != '\0')
    av[i] = s + 1;
   else
    i++;
  }
  argv[j] = ((void*)0);
  executable = strsave( argv[0] );
  argv[0] = stringf( "\"%s\"", argv[0] );
  if (verbose > 0) {
   int k;
   fprintf(stderr, "%s", argv[0]);
   for (k = 1; argv[k] != ((void*)0); k++)
    fprintf(stderr, " %s", argv[k]);
   fprintf(stderr, "\n");
  }
  if (verbose < 2)
   status = spawn(executable, argv);
  if (status == -1) {
   fprintf(stderr, "%s: ", progname);
   perror(argv[0]);
  }
 }
 return status;
}
