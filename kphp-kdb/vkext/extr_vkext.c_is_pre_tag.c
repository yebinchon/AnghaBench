
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int is_pre_tag (const char *s) {
  if (s[1] == 'p') {
    return s[2] == 'r' && s[3] == 'e' && s[4] == '>';
  } else if (s[1] == 'c') {
    return s[2] == 'o' && s[3] == 'd' && s[4] == 'e' && s[5] == '>';
  } else if (s[1] == '/') {
    if (s[1] == '/') {
      return -(s[3] == 'r' && s[4] == 'e' && s[5] == '>');
    } else {
      return -(s[3] == 'o' && s[4] == 'd' && s[5] == 'e' && s[6] == '>');
    }
  }
  return 0;
}
