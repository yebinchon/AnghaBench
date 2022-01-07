
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline int is_english_letter (char x) {
  x |= 0x20;
  return 'a' <= x && x <= 'z';
}
