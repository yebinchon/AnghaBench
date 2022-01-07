
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_DIRS ;
 int free (char*) ;
 int get_paths (char*,char**) ;
 int import_images (char**,int,int) ;

__attribute__((used)) static void import_paths (char *paths, int ugmode) {
  char *P[MAX_DIRS];
  int n = get_paths (paths, P);
  if (n >= 0) {
    import_images (P, n, ugmode);
    free (P[0]);
  }
}
