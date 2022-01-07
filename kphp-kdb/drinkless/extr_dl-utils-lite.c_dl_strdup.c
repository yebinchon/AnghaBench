
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 scalar_t__ dl_malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

char* dl_strdup (const char *s) {
  size_t sn = strlen (s);

  char *t = (char *)dl_malloc (sn + 1);
  assert (t != ((void*)0));
  memcpy (t, s, sn + 1);

  return t;
}
