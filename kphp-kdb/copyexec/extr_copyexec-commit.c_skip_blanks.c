
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;

__attribute__((used)) static inline int skip_blanks (char *b, int i) {
  while (b[i] && isspace (b[i])) {
    i++;
  }
  return i;
}
