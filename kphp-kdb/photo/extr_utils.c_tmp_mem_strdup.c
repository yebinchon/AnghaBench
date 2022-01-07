
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,int) ;
 int strlen (char*) ;
 char* tmp_mem_alloc (int) ;

char *tmp_mem_strdup (char *s) {
  int n = strlen (s) + 1;
  char *v = tmp_mem_alloc (n);
  memcpy (v, s, n);
  return v;
}
