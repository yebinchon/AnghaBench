
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print_tests (int ) ;
 int printf (char*) ;
 int run_test (char*,int,int) ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int maybe_run_test(int argc, char **argv) {
  if (strcmp(argv[1], "--list") == 0) {
    print_tests(stdout);
    return 0;
  }

  if (strcmp(argv[1], "spawn_helper") == 0) {
    printf("hello world\n");
    return 42;
  }

  return run_test(argv[1], 1, 1);
}
