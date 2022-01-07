
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* skipspc (char*) ;

__attribute__((used)) static char *getword (char **ptr, int *len) {
  char *start = skipspc (*ptr), *tmp = start;

  while (*tmp && *tmp != ' ' && *tmp != '\t' && *tmp != '\n') {
    ++tmp;
  }

  *ptr = tmp;
  *len = tmp - start;

  if (!*len) {
    return 0;
  }

  return start;
}
