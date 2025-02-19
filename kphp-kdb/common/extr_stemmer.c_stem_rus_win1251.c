
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int conv_rus_win1251 (char const) ;
 int stem_rus (int,int*) ;
 int* stem_ts ;

int stem_rus_win1251 (const char *s, int len, int *delete_penultimate_letter) {
  int n;
  for (n = 0; n < len && s[n]; n++) {
    stem_ts[n] = conv_rus_win1251 (s[n]);
  }
  stem_ts[n] = -1;
  return stem_rus (n, delete_penultimate_letter);
}
