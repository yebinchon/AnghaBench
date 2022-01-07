
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

__attribute__((used)) static void rstrip_slash (char *s) {
  if (s != ((void*)0) && *s) {
    char *p = s + strlen (s) - 1;
    if (*p == '/') {
      *p = 0;
    }
  }
}
