
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int is_letter (int x) {
  return ('a' <= x && x <='z') || ('A' <= x && x <= 'Z') || x < 0 || ('0' <= x && x <= '9');
}
