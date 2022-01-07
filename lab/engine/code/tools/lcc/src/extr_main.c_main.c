
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int (* progend ) () ;int (* stabend ) (TYPE_1__*,int *,int *,int *,int *) ;int (* stabinit ) (int ,int,char**) ;int (* progbeg ) (int,char**) ;} ;
struct TYPE_10__ {char* name; TYPE_7__* ir; } ;
struct TYPE_9__ {scalar_t__ end; } ;
struct TYPE_8__ {int y; scalar_t__ x; int file; } ;
typedef int * Symbol ;
typedef TYPE_1__ Coordinate ;


 int EXIT_FAILURE ;
 int GLOBAL ;
 TYPE_7__* IR ;
 int PERM ;
 int apply (scalar_t__,int *,int *) ;
 TYPE_6__* bindings ;
 int deallocate (int ) ;
 scalar_t__ errcnt ;
 TYPE_4__ events ;
 int exit (int ) ;
 int finalize () ;
 int firstfile ;
 int foreach (int ,int ,int ,int **) ;
 int fprint (int ,char*,...) ;
 int gettok () ;
 int glevel ;
 int identifiers ;
 int init (int,char**) ;
 int lineno ;
 int loci ;
 int * ltov (int *,int ) ;
 int memset (TYPE_4__*,int ,int) ;
 int program () ;
 int stderr ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int stub1 (int,char**) ;
 int stub2 (int ,int,char**) ;
 int stub3 (TYPE_1__*,int *,int *,int *,int *) ;
 int stub4 (TYPE_1__*,int *,int *,int *,int *) ;
 int stub5 () ;
 int symbols ;
 int t ;
 int types ;
 int typestab ;
 scalar_t__ xref ;

int main(int argc, char *argv[]) {
 int i, j;
 for (i = argc - 1; i > 0; i--)
  if (strncmp(argv[i], "-target=", 8) == 0)
   break;
 if (i > 0) {
  char *s = strchr(argv[i], '\\');
  if (s != ((void*)0))
   *s = '/';
  for (j = 0; bindings[j].name && bindings[j].ir; j++)
   if (strcmp(&argv[i][8], bindings[j].name) == 0) {
    IR = bindings[j].ir;
    break;
   }
  if (s != ((void*)0))
   *s = '\\';
 }
 if (!IR) {
  fprint(stderr, "%s: unknown target", argv[0]);
  if (i > 0)
   fprint(stderr, " `%s'", &argv[i][8]);
  fprint(stderr, "; must specify one of\n");
  for (i = 0; bindings[i].name; i++)
   fprint(stderr, "\t-target=%s\n", bindings[i].name);
  exit(EXIT_FAILURE);
 }
 init(argc, argv);
 t = gettok();
 (*IR->progbeg)(argc, argv);
 if (glevel && IR->stabinit)
  (*IR->stabinit)(firstfile, argc, argv);
 program();
 if (events.end)
  apply(events.end, ((void*)0), ((void*)0));
 memset(&events, 0, sizeof events);
 if (glevel || xref) {
  Symbol symroot = ((void*)0);
  Coordinate src;
  foreach(types, GLOBAL, typestab, &symroot);
  foreach(identifiers, GLOBAL, typestab, &symroot);
  src.file = firstfile;
  src.x = 0;
  src.y = lineno;
  if ((glevel > 2 || xref) && IR->stabend)
   (*IR->stabend)(&src, symroot,
    ltov(&loci, PERM),
    ltov(&symbols, PERM), ((void*)0));
  else if (IR->stabend)
   (*IR->stabend)(&src, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 }
 finalize();
 (*IR->progend)();
 deallocate(PERM);
 return errcnt > 0;
}
