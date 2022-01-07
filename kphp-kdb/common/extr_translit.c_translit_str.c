
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int memcpy (char*,char*,int) ;
 int strlen (char*) ;
 char* trans_letter (char*,int*) ;

char *translit_str (char *buffer, int buff_size, char *str, int len) {
  char *ptr = str, *out = buffer, *str_e = str + len, *out_e = buffer + buff_size;
  while (ptr < str_e && *ptr) {
    int a = 0, b;
    char *tr = trans_letter (ptr, &a);
    if (tr) {
      b = strlen (tr);
    } else {
      b = 1;
      tr = ptr;
    }
    assert (a > 0 && b >= 0);
    if (out + b > out_e) {
      *out = 0;
      return buffer;
    }
    memcpy (out, tr, b);
    out += b;
    ptr += a;
  }
  *out = 0;
  return buffer;
}
