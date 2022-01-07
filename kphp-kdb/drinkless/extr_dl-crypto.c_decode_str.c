
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char decode_char (char) ;

inline void decode_str (char *s, int sn) {
  int i;
  for (i = 0; i < sn; i++) {
    s[i] = decode_char (s[i]);
  }
}
