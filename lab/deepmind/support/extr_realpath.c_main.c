
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char*,...) ;
 int free (char*) ;
 char* realpath (char*,int *) ;
 int stderr ;
 int stdout ;
 char* strerror (scalar_t__) ;

int main(int argc, char* argv[]) {
  int num_errors = 0;
  errno = 0;

  for (int i = 1; i < argc; ++i) {
    char* p = realpath(argv[i], ((void*)0));
    if (p == ((void*)0)) {
      fprintf(stderr, "Error resolving path '%s', error was: '%s'\n",
              argv[i], strerror(errno));
      errno = 0;
      ++num_errors;
    } else {
      fprintf(stdout, "%s\n", p);
      free(p);
    }
  }

  return num_errors == 0 ? EXIT_SUCCESS : EXIT_FAILURE;
}
