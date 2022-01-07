
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmp_char ;
 int memcpy (char*,char*,int) ;
 int qsort (char*,int,int,int ) ;
 char* sp_str_alloc (int) ;
 int strlen (char*) ;

char *sp_sort (char *s) {
  int l = strlen (s);
  char *t = sp_str_alloc (l);
  if (t != 0) {
    memcpy (t, s, (l + 1) * sizeof (char));
    qsort (t, l, sizeof (char), cmp_char);
  }

  return t;
}
