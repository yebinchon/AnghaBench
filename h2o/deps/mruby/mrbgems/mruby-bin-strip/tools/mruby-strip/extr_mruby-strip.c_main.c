
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strip_args {int dummy; } ;
typedef int mrb_state ;


 int EXIT_FAILURE ;
 int fputs (char*,int ) ;
 int mrb_close (int *) ;
 int mrb_default_allocf ;
 int * mrb_open_core (int ,int *) ;
 int parse_args (int,char**,struct strip_args*) ;
 int print_usage (char*) ;
 int printf (char*) ;
 int stderr ;
 int strip (int *,struct strip_args*) ;

int
main(int argc, char **argv)
{
  struct strip_args args;
  int args_result;
  mrb_state *mrb;
  int ret;

  if (argc <= 1) {
    printf("no files to strip\n");
    print_usage(argv[0]);
    return EXIT_FAILURE;
  }

  args_result = parse_args(argc, argv, &args);
  if (args_result < 0) {
    print_usage(argv[0]);
    return EXIT_FAILURE;
  }
  mrb = mrb_open_core(mrb_default_allocf, ((void*)0));
  if (mrb == ((void*)0)) {
    fputs("Invalid mrb_state, exiting mruby-strip\n", stderr);
    return EXIT_FAILURE;
  }

  ret = strip(mrb, &args);

  mrb_close(mrb);
  return ret;
}
