
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int char_to_hex (int ) ;

int parse16 (const char *from, int len) {
  const char *from_end = from + len;
  int res = 0;
  while (from < from_end) {
    res = res * 16 + char_to_hex (*from++);
  }
  return res;
}
