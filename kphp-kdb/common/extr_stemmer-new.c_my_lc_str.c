
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int get_str_class (char const*,int) ;
 int lc_str (char*,char const*,int) ;
 int stem_eng (char const*,int,char*) ;
 int stem_rus_win1251 (char const*,int,char*,int) ;
 int use_stemmer ;

int my_lc_str (char *buff, const char *text, int len) {
  int x, c;
  if (!use_stemmer) {
    lc_str (buff, text, len);
    return len;
  }
  c = get_str_class (text, len);
  if ((c & 12) == 12) {
    x = stem_rus_win1251 (text, len, buff, 1);
    lc_str (buff, buff, x);
    return x;
  }
  if (c & 8) {
    int i;
    for (i = 0; i < len && text[i] >= 0; i++) {
    }
    if (i == len) {
      x = stem_eng (text, len, buff);
      assert (x > 0 && x <= len);
      lc_str (buff, buff, x);
      return x;
    }
  }
  lc_str (buff, text, len);
  return len;
}
