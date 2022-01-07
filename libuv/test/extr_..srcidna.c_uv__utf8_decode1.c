
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uv__utf8_decode1_slow (char const**,char const*,unsigned int) ;

unsigned uv__utf8_decode1(const char** p, const char* pe) {
  unsigned a;

  a = (unsigned char) *(*p)++;

  if (a < 128)
    return a;

  return uv__utf8_decode1_slow(p, pe, a);
}
