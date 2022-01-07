
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memchr (char const*,int ,size_t) ;

size_t strnlen(const char* str, size_t maxlen) {
  char* p = memchr(str, 0, maxlen);
  if (p == ((void*)0))
    return maxlen;
  else
    return p - str;
}
