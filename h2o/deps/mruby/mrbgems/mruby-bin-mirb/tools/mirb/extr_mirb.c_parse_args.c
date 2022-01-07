
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _args {char** libv; char** argv; int argc; int * rfp; void* verbose; int libc; void* debug; int member_0; } ;
typedef int mrb_state ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 void* TRUE ;
 char* dup_arg_item (int *,char*) ;
 int exit (int) ;
 int * fopen (char*,char*) ;
 int memcpy (char**,char**,int) ;
 scalar_t__ mrb_malloc (int *,int) ;
 scalar_t__ mrb_realloc (int *,char**,int) ;
 int mrb_show_copyright (int *) ;
 int mrb_show_version (int *) ;
 int printf (char*,char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int
parse_args(mrb_state *mrb, int argc, char **argv, struct _args *args)
{
  char **origargv = argv;
  static const struct _args args_zero = { 0 };

  *args = args_zero;

  for (argc--,argv++; argc > 0; argc--,argv++) {
    char *item;
    if (argv[0][0] != '-') break;

    item = argv[0] + 1;
    switch (*item++) {
    case 'd':
      args->debug = TRUE;
      break;
    case 'r':
      if (!item[0]) {
        if (argc <= 1) {
          printf("%s: No library specified for -r\n", *origargv);
          return EXIT_FAILURE;
        }
        argc--; argv++;
        item = argv[0];
      }
      if (args->libc == 0) {
        args->libv = (char**)mrb_malloc(mrb, sizeof(char*));
      }
      else {
        args->libv = (char**)mrb_realloc(mrb, args->libv, sizeof(char*) * (args->libc + 1));
      }
      args->libv[args->libc++] = dup_arg_item(mrb, item);
      break;
    case 'v':
      if (!args->verbose) mrb_show_version(mrb);
      args->verbose = TRUE;
      break;
    case '-':
      if (strcmp((*argv) + 2, "version") == 0) {
        mrb_show_version(mrb);
        exit(EXIT_SUCCESS);
      }
      else if (strcmp((*argv) + 2, "verbose") == 0) {
        args->verbose = TRUE;
        break;
      }
      else if (strcmp((*argv) + 2, "copyright") == 0) {
        mrb_show_copyright(mrb);
        exit(EXIT_SUCCESS);
      }
    default:
      return EXIT_FAILURE;
    }
  }

  if (args->rfp == ((void*)0)) {
    if (*argv != ((void*)0)) {
      args->rfp = fopen(argv[0], "r");
      if (args->rfp == ((void*)0)) {
        printf("Cannot open program file. (%s)\n", *argv);
        return EXIT_FAILURE;
      }
      argc--; argv++;
    }
  }
  args->argv = (char **)mrb_realloc(mrb, args->argv, sizeof(char*) * (argc + 1));
  memcpy(args->argv, argv, (argc+1) * sizeof(char*));
  args->argc = argc;

  return EXIT_SUCCESS;
}
