
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** TL ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void asort (int a, int b) {
  int i, j;
  char *h, *t;
  if (a >= b) { return; }
  i = a; j = b; h = TL[(a+b)>>1];
  do {
    while (strcmp (TL[i], h) < 0) { i++; }
    while (strcmp (TL[j], h) > 0) { j--; }
    if (i <= j) {
      t = TL[i]; TL[i++] = TL[j]; TL[j--] = t;
    }
  } while (i <= j);
  asort (a, j);
  asort (i, b);
}
