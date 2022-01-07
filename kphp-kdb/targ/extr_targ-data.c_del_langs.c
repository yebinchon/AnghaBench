
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct user_langs* langs; } ;
typedef TYPE_1__ user_t ;
struct user_langs {int cur_langs; int* L; } ;


 int assert (int) ;
 int del_user_lang (TYPE_1__*,int) ;

__attribute__((used)) static int del_langs (user_t *U, int List[], int len) {
  if (len < 0) {
    return -1;
  }
  if (!U || !len || !U->langs) {
    return 0;
  }

  struct user_langs *L = U->langs;
  int i, j = 0, k = 0;

  assert (List[0] >= 0);
  for (i = 1; i < len; i++) {
    assert (List[i-1] < List[i]);
  }


  for (i = 0; i < L->cur_langs; i++) {
    while (j < len && List[j] < L->L[i]) {
      j++;
    }
    if (j < len && List[j] == L->L[i]) {
      del_user_lang (U, List[j++]);
    } else {
      L->L[k++] = L->L[i];
    }
  }

  i -= k;
  L->cur_langs = k;
  return i;
}
