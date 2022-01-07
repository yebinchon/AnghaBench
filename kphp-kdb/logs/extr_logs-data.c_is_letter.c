
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline int is_letter (char x) {
  return ('a' <= x && x <= 'z') || ('A' <= x && x <= 'Z') || ('_' == x);
}
