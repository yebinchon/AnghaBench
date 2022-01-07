
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_CHAR (char) ;
 char* dl_malloc (int) ;
 scalar_t__ is_letter (char) ;
 int memcpy (char*,char*,int) ;
 char* prep_buf ;

char *prepare_str_old (char *x) {
  char *s = prep_buf;
  int i=0, j=0;

  while (x[i] && !is_letter (x[i])) {
    i++;
  }

  while (x[i]) {
    while (is_letter (x[i])) {
      ADD_CHAR(x[i++]);
    }
    while (x[i] && !is_letter (x[i])) {
      i++;
    }
    if (!x[i])
    {
      ADD_CHAR('+');
      break;
    }
    ADD_CHAR('+');
  }

  ADD_CHAR(0);

  char *res = dl_malloc (j);
  if (res == ((void*)0)) {
    return res;
  }
  memcpy (res, prep_buf, j);

  return res;
}
