
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int fprintf (int ,char*,char const*,...) ;
 int perror (char*) ;
 int stderr ;

void dl_assert__ (const char *expr, const char *file_name, const char *func_name,
                  int line, const char *desc, int use_perror) {
  fprintf (stderr, "dl_assert failed [%s : %s : %d]: ", file_name, func_name, line);
  fprintf (stderr, "%s\n", desc);
  if (use_perror) {
    perror ("perror description");
  }
  abort();
}
