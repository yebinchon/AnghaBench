
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int user_id; } ;
typedef TYPE_1__ userpair_t ;


 TYPE_1__* P ;

void my_psort (int a, int b) {
  userpair_t t;
  int h, i, j;
  if (a >= b) return;
  i = a; j = b;
  h = P[(a+b)>>1].user_id;
  do {
    while (P[i].user_id < h) i++;
    while (P[j].user_id > h) j--;
    if (i <= j) {
      t = P[i]; P[i++] = P[j]; P[j--] = t;
    }
  } while (i <= j);
  my_psort (a, j);
  my_psort (i, b);
}
