
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,int) ;
 char* tmp_mem_alloc (int) ;

char *tmp_mem_strdupn (char *s, int n) {
  char *v = tmp_mem_alloc (n + 1);
  memcpy (v, s, n);
  v[n] = 0;
  return v;
}
