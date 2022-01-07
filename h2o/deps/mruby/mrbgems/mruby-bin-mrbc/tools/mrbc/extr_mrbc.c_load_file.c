
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct mrbc_args {char** argv; size_t idx; char* prog; size_t argc; scalar_t__ verbose; } ;
struct TYPE_7__ {void* no_exec; void* dump_result; } ;
typedef TYPE_1__ mrbc_context ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef void* mrb_bool ;
typedef int FILE ;


 void* FALSE ;
 void* TRUE ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,char*) ;
 int mrb_load_file_cxt (int *,int *,TYPE_1__*) ;
 int mrb_nil_value () ;
 scalar_t__ mrb_undef_p (int ) ;
 int mrbc_context_free (int *,TYPE_1__*) ;
 TYPE_1__* mrbc_context_new (int *) ;
 int mrbc_filename (int *,TYPE_1__*,char*) ;
 int mrbc_partial_hook (int *,TYPE_1__*,int ,void*) ;
 int partial_hook ;
 int stderr ;
 int * stdin ;

__attribute__((used)) static mrb_value
load_file(mrb_state *mrb, struct mrbc_args *args)
{
  mrbc_context *c;
  mrb_value result;
  char *input = args->argv[args->idx];
  FILE *infile;
  mrb_bool need_close = FALSE;

  c = mrbc_context_new(mrb);
  if (args->verbose)
    c->dump_result = TRUE;
  c->no_exec = TRUE;
  if (input[0] == '-' && input[1] == '\0') {
    infile = stdin;
  }
  else {
    need_close = TRUE;
    if ((infile = fopen(input, "r")) == ((void*)0)) {
      fprintf(stderr, "%s: cannot open program file. (%s)\n", args->prog, input);
      return mrb_nil_value();
    }
  }
  mrbc_filename(mrb, c, input);
  args->idx++;
  if (args->idx < args->argc) {
    need_close = FALSE;
    mrbc_partial_hook(mrb, c, partial_hook, (void*)args);
  }

  result = mrb_load_file_cxt(mrb, infile, c);
  if (need_close) fclose(infile);
  mrbc_context_free(mrb, c);
  if (mrb_undef_p(result)) {
    return mrb_nil_value();
  }
  return result;
}
