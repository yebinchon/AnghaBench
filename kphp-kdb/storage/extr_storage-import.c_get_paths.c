
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_DIRS ;
 int free (char*) ;
 char* strdup (char const*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static int get_paths (const char *paths, char *P[MAX_DIRS]) {
  char *s = strdup (paths), *p;
  int n = 0;
  for (p = strtok (s, ":"); p != ((void*)0); p = strtok (((void*)0), ":")) {
    if (n >= MAX_DIRS) {
      free (s);
      return -1;
    }
    P[n++] = p;
  }
  return n;
}
