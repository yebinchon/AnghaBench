
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char N ;
 int assert (int) ;

inline char decode_char (char c) {
  assert (0 <= c && c < N);
  if (c < 26) {
    return (char)(c + 'A');
  }
  c = (char)(c - 26);
  if (c < 26) {
    return (char)(c + 'a');
  }
  c = (char)(c - 26);
  if (c < 10) {
    return (char)(c + '0');
  }
  return '_';
}
