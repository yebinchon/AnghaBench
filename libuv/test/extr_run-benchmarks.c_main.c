
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int maybe_run_test (int,char**) ;
 scalar_t__ platform_init (int,char**) ;
 int run_test_part (char*,char*) ;
 int run_tests (int) ;
 int stderr ;

int main(int argc, char **argv) {
  if (platform_init(argc, argv))
    return EXIT_FAILURE;

  switch (argc) {
  case 1: return run_tests(1);
  case 2: return maybe_run_test(argc, argv);
  case 3: return run_test_part(argv[1], argv[2]);
  default:
    fprintf(stderr, "Too many arguments.\n");
    fflush(stderr);
    return EXIT_FAILURE;
  }

  return EXIT_SUCCESS;
}
