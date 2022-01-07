
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int check_text_len (int text_len) {
  return (text_len >= -1 && text_len < 4096);
}
