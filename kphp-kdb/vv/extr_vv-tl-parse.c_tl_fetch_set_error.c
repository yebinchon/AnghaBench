
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERRNUM ;
 scalar_t__ TL_ERROR ;
 int assert (char const*) ;
 scalar_t__ strdup (char const*) ;
 int vkprintf (int,char*,char const*) ;

int tl_fetch_set_error (const char *s, int errnum) {
  assert (s);
  if (TL_ERROR) {
    return 0;
  }
  vkprintf (2, "Error %s\n", s);
  TL_ERROR = strdup (s);
  TL_ERRNUM = errnum;
  return 0;
}
