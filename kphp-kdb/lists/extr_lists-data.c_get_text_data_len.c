
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_text_len (char const*) ;

int get_text_data_len (const char *text) {
  int len = get_text_len (text);
  return len <= 253 ? len + 1 : len + 4;
}
