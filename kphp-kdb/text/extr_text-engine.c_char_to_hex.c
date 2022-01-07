
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline int char_to_hex (int c) {
  if (c <= '9') {
    return c - '0';
  } else {
    return c - 'a' + 10;
  }
}
