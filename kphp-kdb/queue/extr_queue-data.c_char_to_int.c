
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;

inline char char_to_int (char c) {
  if ('A' <= c && c <= 'Z') {
    return c - 'A';
  }
  if ('a' <= c && c <= 'z') {
    return c - 'a' + 26;
  }
  if ('0' <= c && c <= '9') {
    return c - '0' + 26 + 26;
  }
  assert (0);
}
