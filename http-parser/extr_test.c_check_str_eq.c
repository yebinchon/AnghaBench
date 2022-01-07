
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {char* name; } ;


 int printf (char*,char const*,...) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static inline int
check_str_eq (const struct message *m,
              const char *prop,
              const char *expected,
              const char *found) {
  if ((expected == ((void*)0)) != (found == ((void*)0))) {
    printf("\n*** Error: %s in '%s' ***\n\n", prop, m->name);
    printf("expected %s\n", (expected == ((void*)0)) ? "NULL" : expected);
    printf("   found %s\n", (found == ((void*)0)) ? "NULL" : found);
    return 0;
  }
  if (expected != ((void*)0) && 0 != strcmp(expected, found)) {
    printf("\n*** Error: %s in '%s' ***\n\n", prop, m->name);
    printf("expected '%s'\n", expected);
    printf("   found '%s'\n", found);
    return 0;
  }
  return 1;
}
