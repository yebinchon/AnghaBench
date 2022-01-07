
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* jvp_utf8_next (char const*,char const*,int*) ;

int jvp_utf8_is_valid(const char* in, const char* end) {
  int codepoint;
  while ((in = jvp_utf8_next(in, end, &codepoint))) {
    if (codepoint == -1) return 0;
  }
  return 1;
}
