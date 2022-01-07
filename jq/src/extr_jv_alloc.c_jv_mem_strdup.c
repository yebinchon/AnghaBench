
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memory_exhausted () ;
 char* strdup (char const*) ;

char* jv_mem_strdup(const char *s) {
  char *p = strdup(s);
  if (!p) {
    memory_exhausted();
  }
  return p;
}
