
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strdup (char const*) ;

char* jv_mem_strdup_unguarded(const char *s) {
  return strdup(s);
}
