
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int date; } ;
typedef TYPE_1__ item_t ;


 TYPE_1__** X ;

void isort (int a, int b) {
  int i, j, h;
  item_t *t;
  if (a >= b) { return; }
  i = a; j = b; h = X[(a+b)>>1]->date;
  do {
    while (X[i]->date > h) { i++; }
    while (X[j]->date < h) { j--; }
    if (i <= j) {
      t = X[i]; X[i++] = X[j]; X[j--] = t;
    }
  } while (i <= j);
  isort (a, j);
  isort (i, b);
}
