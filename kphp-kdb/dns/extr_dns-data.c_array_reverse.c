
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void array_reverse (unsigned char *s, int l) {
  int i = 0, j = l - 1;
  while (i < j) {
    unsigned char w = s[i];
    s[i] = s[j];
    s[j] = w;
    i++;
    j--;
  }
}
