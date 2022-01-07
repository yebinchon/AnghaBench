
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_NAME_SIZE ;
 int assert (int) ;
 char* dl_malloc (int) ;
 int memcpy (char*,char*,int) ;
 char* prep_buf ;
 int prep_ibuf ;
 int* prepare_str_UTF8 (int ) ;
 int put_char_utf8 (int ,char*) ;
 int string_to_utf8 (unsigned char*,int ) ;
 int strlen (char*) ;

char *prepare_str (char *x) {
  if (strlen (x) >= MAX_NAME_SIZE / 4) {
    return ((void*)0);
  }

  string_to_utf8 ((unsigned char *)x, prep_ibuf);
  int *v = prepare_str_UTF8 (prep_ibuf);
  char *s = prep_buf;

  while (*v != 0) {
    s += put_char_utf8 (*v++, s);
  }
  *s++ = 0;

  assert (s - prep_buf < MAX_NAME_SIZE);

  char *res = dl_malloc (s - prep_buf);
  if (res == ((void*)0)) {
    return res;
  }

  memcpy (res, prep_buf, s - prep_buf);
  return res;
}
