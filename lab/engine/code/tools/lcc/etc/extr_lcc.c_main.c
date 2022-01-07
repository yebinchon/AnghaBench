
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* str; struct TYPE_3__* link; } ;
typedef TYPE_1__* List ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int Eflag ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 scalar_t__ SIG_IGN ;
 scalar_t__ Sflag ;
 int UpdatePaths (char*) ;
 int ac ;
 int alloc (int) ;
 scalar_t__ append (char*,scalar_t__) ;
 int assert (char*) ;
 int av ;
 scalar_t__ callsys (int ) ;
 scalar_t__ cflag ;
 int compose (int ,scalar_t__,scalar_t__,scalar_t__) ;
 char* concat (char*,int ) ;
 scalar_t__ errcnt ;
 int error (char*,char*) ;
 char* exists (char*) ;
 int exit (int) ;
 int filename (char*,int ) ;
 int first (int ) ;
 int fprintf (int ,char*,char*,...) ;
 char* getenv (char*) ;
 int help () ;
 TYPE_1__* ilist ;
 char** include ;
 int initinputs () ;
 scalar_t__ interrupt ;
 int ld ;
 scalar_t__* llist ;
 int opt (char*) ;
 int option (int ) ;
 char* outfile ;
 scalar_t__ plist ;
 char* progname ;
 int rm (int ) ;
 int rmlist ;
 scalar_t__ signal (int ,scalar_t__) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int stringf (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ suffix (char*,int *,int) ;
 int * suffixes ;
 char* tempdir ;

int main(int argc, char *argv[]) {
 int i, j, nf;

 progname = argv[0];

 UpdatePaths( progname );

 ac = argc + 50;
 av = alloc(ac*sizeof(char *));
 if (signal(SIGINT, SIG_IGN) != SIG_IGN)
  signal(SIGINT, interrupt);
 if (signal(SIGTERM, SIG_IGN) != SIG_IGN)
  signal(SIGTERM, interrupt);




 if (getenv("TMP"))
  tempdir = getenv("TMP");
 else if (getenv("TEMP"))
  tempdir = getenv("TEMP");
 else if (getenv("TMPDIR"))
  tempdir = getenv("TMPDIR");
 assert(tempdir);
 i = strlen(tempdir);
 for (; (i > 0 && tempdir[i-1] == '/') || tempdir[i-1] == '\\'; i--)
  tempdir[i-1] = '\0';
 if (argc <= 1) {
  help();
  exit(0);
 }
 plist = append("-D__LCC__", 0);
 initinputs();
 if (getenv("LCCDIR"))
  option(stringf("-lccdir=%s", getenv("LCCDIR")));
 for (nf = 0, i = j = 1; i < argc; i++) {
  if (strcmp(argv[i], "-o") == 0) {
   if (++i < argc) {
    if (suffix(argv[i], suffixes, 2) >= 0) {
     error("-o would overwrite %s", argv[i]);
     exit(8);
    }
    outfile = argv[i];
    continue;
   } else {
    error("unrecognized option `%s'", argv[i-1]);
    exit(8);
   }
  } else if (strcmp(argv[i], "-target") == 0) {
   if (argv[i+1] && *argv[i+1] != '-')
    i++;
   continue;
  } else if (*argv[i] == '-' && argv[i][1] != 'l') {
   opt(argv[i]);
   continue;
  } else if (*argv[i] != '-' && suffix(argv[i], suffixes, 3) >= 0)
   nf++;
  argv[j++] = argv[i];
 }
 if ((cflag || Sflag) && outfile && nf != 1) {
  fprintf(stderr, "%s: -o %s ignored\n", progname, outfile);
  outfile = 0;
 }
 argv[j] = 0;
 for (i = 0; include[i]; i++)
  plist = append(include[i], plist);
 if (ilist) {
  List b = ilist;
  do {
   b = b->link;
   plist = append(b->str, plist);
  } while (b != ilist);
 }
 ilist = 0;
 for (i = 1; argv[i]; i++)
  if (*argv[i] == '-')
   opt(argv[i]);
  else {
   char *name = exists(argv[i]);
   if (name) {
    if (strcmp(name, argv[i]) != 0
    || (nf > 1 && suffix(name, suffixes, 3) >= 0))
     fprintf(stderr, "%s:\n", name);
    filename(name, 0);
   } else
    error("can't find `%s'", argv[i]);
  }
 if (errcnt == 0 && !Eflag && !Sflag && !cflag && llist[1]) {
  compose(ld, llist[0], llist[1],
   append(outfile ? outfile : concat("a", first(suffixes[4])), 0));
  if (callsys(av))
   errcnt++;
 }
 rm(rmlist);
 return errcnt ? EXIT_FAILURE : EXIT_SUCCESS;
}
