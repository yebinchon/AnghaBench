
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int user_id; } ;
typedef TYPE_1__ userlist_entry_t ;


 TYPE_1__** MetaP ;

__attribute__((used)) static void my_sort (int a, int b) {
  userlist_entry_t *t;
  int h, i, j;
  if (a >= b) return;
  i = a; j = b;
  h = MetaP[(a+b)>>1]->user_id;
  do {
    while (MetaP[i]->user_id < h) i++;
    while (MetaP[j]->user_id > h) j--;
    if (i <= j) {
      t = MetaP[i]; MetaP[i++] = MetaP[j]; MetaP[j--] = t;
    }
  } while (i <= j);
  my_sort (a, j);
  my_sort (i, b);
}
