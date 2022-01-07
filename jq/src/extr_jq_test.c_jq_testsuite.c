
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int FILE ;


 int atoi (char*) ;
 int exit (int) ;
 int * fopen (char*,char*) ;
 int jv_test () ;
 int perror (char*) ;
 int run_jq_tests (int ,int,int *,int,int) ;
 int * stdin ;
 int strcmp (char*,char*) ;

int jq_testsuite(jv libdirs, int verbose, int argc, char* argv[]) {
  FILE *testdata = stdin;
  int skip = -1;
  int take = -1;
  jv_test();
  if (argc > 0) {
    for(int i = 0; i < argc; i++) {
      if (!strcmp(argv[i], "--skip")) {
        skip = atoi(argv[i+1]);
        i++;
      } else if (!strcmp(argv[i], "--take")) {
        take = atoi(argv[i+1]);
        i++;
      } else {
        testdata = fopen(argv[i], "r");
        if (!testdata) {
          perror("fopen");
          exit(1);
        }
      }
    }
  }
  run_jq_tests(libdirs, verbose, testdata, skip, take);
  return 0;
}
