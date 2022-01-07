
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_DIRS ;
 int free (char*) ;
 int get_paths (char*,char**) ;
 int test_dir_exist (char*) ;

__attribute__((used)) static void test_paths (char *paths) {
  char *P[MAX_DIRS];
  int n = get_paths (paths, P);
  if (n >= 0) {
    int i;
    for (i = 0; i < n; i++) {
      test_dir_exist (P[i]);
    }
    free (P[0]);
  }
}
