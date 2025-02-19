
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* P ;
 int PL ;
 int PL_M_CAT ;
 int privacy_resort (int,int,int) ;

__attribute__((used)) static int resort_series (void) {
  int a = 0, b;

  while (P[a] != -1) {
    b = a;
    while (P[a] > 0) { a++; }
    privacy_resort (b, a-1, 0x60000000);
    b = a;
    while (P[a] < -1) { a++; }
    privacy_resort (b, a-1, 0x60000000);
  }

  while (1) {
    while (a > 0 && P[a-1] < 0) { a--; }
    P[a] = -1;
    while (a > 0 && !(P[a-1] & PL_M_CAT)) { a--; }
    b = a;
    while (P[a] != -1) {
      if (P[a] > 0) {
 P[b++] = P[a];
      }
      a++;
    }
    P[b] = -1;
    a = b;
    if (!a) {
      break;
    }
    if (P[a-1] >= 0) {
      b = a - 1;
      while (b > 0 && P[b-1] >= 0) { b--; }
      privacy_resort (b, a-1, 0x60000000);
      break;
    }
  }

  PL = a;
  return a;
}
