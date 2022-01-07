
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int conv_eng (char const) ;
 int do_stem_eng (int) ;
 char last_letter ;
 int maxn ;
 int memcpy (char*,char const*,int) ;
 int* stem_ts ;

int stem_eng (const char *s, int len, char *res) {
  int n;
  for (n = 0; n < len && s[n] && n + 1 < maxn; n++) {
    stem_ts[n] = conv_eng (s[n]);
  }
  stem_ts[n] = -1;
  int len2 = do_stem_eng (n);
  memcpy (res, s, len2 * sizeof (char));
  if (last_letter && len2 > 0) {
    res[len2 - 1] = last_letter;
  }
  res[len2] = 0;
  return len2;
}
