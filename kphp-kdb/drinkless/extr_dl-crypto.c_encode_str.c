
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char encode_char (char) ;

inline void encode_str (char *s, int sn) {
  int i;
  for (i = 0; i < sn; i++) {
    s[i] = encode_char (s[i]);
  }
}
