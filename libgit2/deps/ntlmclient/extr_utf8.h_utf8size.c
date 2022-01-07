
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t utf8size(const void *str) {
  const char *s = (const char *)str;
  size_t size = 0;
  while ('\0' != s[size]) {
    size++;
  }


  size++;
  return size;
}
