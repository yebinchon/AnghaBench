
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline int hex_to_char (int c) {
  if (c < 10) {
    return c + '0';
  } else {
    return c - 10 + 'a';
  }
}
