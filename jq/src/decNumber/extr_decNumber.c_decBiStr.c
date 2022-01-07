
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Flag ;



__attribute__((used)) static Flag decBiStr(const char *targ, const char *str1, const char *str2) {
  for (;;targ++, str1++, str2++) {
    if (*targ!=*str1 && *targ!=*str2) return 0;

    if (*targ=='\0') break;
    }
  return 1;
  }
