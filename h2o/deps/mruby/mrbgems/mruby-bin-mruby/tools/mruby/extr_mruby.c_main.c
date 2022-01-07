
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;


struct _args {char* cmdline; int argc; char** argv; int libc; char** libv; scalar_t__ check_syntax; int * rfp; scalar_t__ mrbfile; scalar_t__ verbose; int debug; } ;
struct TYPE_29__ {void* no_exec; void* dump_result; } ;
typedef TYPE_1__ mrbc_context ;
typedef int mrb_value ;
typedef int mrb_sym ;
struct TYPE_30__ {scalar_t__ exc; } ;
typedef TYPE_2__ mrb_state ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 void* TRUE ;
 int abort () ;
 int cleanup (TYPE_2__*,struct _args*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fputs (char*,int ) ;
 int mrb_ary_new_capa (TYPE_2__*,int) ;
 int mrb_ary_push (TYPE_2__*,int ,int ) ;
 int mrb_bool_value (int ) ;
 int mrb_define_global_const (TYPE_2__*,char*,int ) ;
 int mrb_gc_arena_restore (TYPE_2__*,int) ;
 int mrb_gc_arena_save (TYPE_2__*) ;
 int mrb_gv_set (TYPE_2__*,int ,int ) ;
 int mrb_intern_lit (TYPE_2__*,char*) ;
 int mrb_load_file_cxt (TYPE_2__*,int *,TYPE_1__*) ;
 int mrb_load_irep_file_cxt (TYPE_2__*,int *,TYPE_1__*) ;
 int mrb_load_string_cxt (TYPE_2__*,char*,TYPE_1__*) ;
 int mrb_obj_value (scalar_t__) ;
 TYPE_2__* mrb_open () ;
 int mrb_p (TYPE_2__*,int ) ;
 int mrb_print_error (TYPE_2__*) ;
 int mrb_str_new_cstr (TYPE_2__*,char const*) ;
 int mrb_str_new_lit (TYPE_2__*,char*) ;
 scalar_t__ mrb_undef_p (int ) ;
 int mrb_utf8_free (char*) ;
 char* mrb_utf8_from_locale (char*,int) ;
 int mrbc_context_free (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* mrbc_context_new (TYPE_2__*) ;
 int mrbc_filename (TYPE_2__*,TYPE_1__*,char const*) ;
 int parse_args (TYPE_2__*,int,char**,struct _args*) ;
 int printf (char*,...) ;
 int stderr ;
 int usage (char*) ;

int
main(int argc, char **argv)
{
  mrb_state *mrb = mrb_open();
  int n = -1;
  int i;
  struct _args args;
  mrb_value ARGV;
  mrbc_context *c;
  mrb_value v;
  mrb_sym zero_sym;

  if (mrb == ((void*)0)) {
    fputs("Invalid mrb_state, exiting mruby\n", stderr);
    return EXIT_FAILURE;
  }

  n = parse_args(mrb, argc, argv, &args);
  if (n == EXIT_FAILURE || (args.cmdline == ((void*)0) && args.rfp == ((void*)0))) {
    cleanup(mrb, &args);
    usage(argv[0]);
    return n;
  }
  else {
    int ai = mrb_gc_arena_save(mrb);
    ARGV = mrb_ary_new_capa(mrb, args.argc);
    for (i = 0; i < args.argc; i++) {
      char* utf8 = mrb_utf8_from_locale(args.argv[i], -1);
      if (utf8) {
        mrb_ary_push(mrb, ARGV, mrb_str_new_cstr(mrb, utf8));
        mrb_utf8_free(utf8);
      }
    }
    mrb_define_global_const(mrb, "ARGV", ARGV);
    mrb_gv_set(mrb, mrb_intern_lit(mrb, "$DEBUG"), mrb_bool_value(args.debug));

    c = mrbc_context_new(mrb);
    if (args.verbose)
      c->dump_result = TRUE;
    if (args.check_syntax)
      c->no_exec = TRUE;


    zero_sym = mrb_intern_lit(mrb, "$0");
    if (args.rfp) {
      const char *cmdline;
      cmdline = args.cmdline ? args.cmdline : "-";
      mrbc_filename(mrb, c, cmdline);
      mrb_gv_set(mrb, zero_sym, mrb_str_new_cstr(mrb, cmdline));
    }
    else {
      mrbc_filename(mrb, c, "-e");
      mrb_gv_set(mrb, zero_sym, mrb_str_new_lit(mrb, "-e"));
    }


    for (i = 0; i < args.libc; i++) {
      FILE *lfp = fopen(args.libv[i], args.mrbfile ? "rb" : "r");
      if (lfp == ((void*)0)) {
        printf("Cannot open library file: %s\n", args.libv[i]);
        mrbc_context_free(mrb, c);
        cleanup(mrb, &args);
        return EXIT_FAILURE;
      }
      if (args.mrbfile) {
        v = mrb_load_irep_file_cxt(mrb, lfp, c);
      }
      else {
        v = mrb_load_file_cxt(mrb, lfp, c);
      }
      fclose(lfp);
    }


    if (args.mrbfile) {
      v = mrb_load_irep_file_cxt(mrb, args.rfp, c);
    }
    else if (args.rfp) {
      v = mrb_load_file_cxt(mrb, args.rfp, c);
    }
    else {
      char* utf8 = mrb_utf8_from_locale(args.cmdline, -1);
      if (!utf8) abort();
      v = mrb_load_string_cxt(mrb, utf8, c);
      mrb_utf8_free(utf8);
    }

    mrb_gc_arena_restore(mrb, ai);
    mrbc_context_free(mrb, c);
    if (mrb->exc) {
      if (mrb_undef_p(v)) {
        mrb_p(mrb, mrb_obj_value(mrb->exc));
      }
      else {
        mrb_print_error(mrb);
      }
      n = -1;
    }
    else if (args.check_syntax) {
      printf("Syntax OK\n");
    }
  }
  cleanup(mrb, &args);

  return n == 0 ? EXIT_SUCCESS : EXIT_FAILURE;
}
