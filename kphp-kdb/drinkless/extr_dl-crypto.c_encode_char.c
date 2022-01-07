
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;

inline char encode_char (char c) {
  if ('A' <= c && c <= 'Z') {
    return (char)(c - 'A');
  }
  if ('a' <= c && c <= 'z') {
    return (char)(c - 'a' + 26);
  }
  if ('0' <= c && c <= '9') {
    return (char)(c - '0' + 26 + 26);
  }
  if (c == '_') {
    return (char)(10 + 26 + 26);
  }
  assert (0);
}
