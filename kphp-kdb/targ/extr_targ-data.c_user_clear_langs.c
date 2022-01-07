
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct user_langs* langs; } ;
typedef TYPE_1__ user_t ;
struct user_langs {int cur_langs; int tot_langs; int * L; } ;


 int del_user_lang (TYPE_1__*,int ) ;
 int zfree (struct user_langs*,int) ;

__attribute__((used)) static void user_clear_langs (user_t *U) {
  struct user_langs *L = U->langs;

  if (L) {
    int i;
    for (i = 0; i < L->cur_langs; i++) {
      del_user_lang (U, L->L[i]);
    }
    zfree (L, sizeof (struct user_langs) + L->tot_langs*2);
  }

  U->langs = 0;
}
