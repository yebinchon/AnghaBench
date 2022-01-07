
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_t ;
struct lev_langs {int* langs; } ;


 scalar_t__ LEV_TARG_LANG_DEL ;
 int MAX_LANGS ;
 struct lev_langs* alloc_log_event (scalar_t__,int,int) ;
 int del_langs (int *,int*,int) ;
 int * get_user (int) ;

int do_delete_user_lang (int user_id, int lang_id) {
  user_t *U = get_user (user_id);
  if (!U || lang_id < 0 || lang_id >= MAX_LANGS) {
    return 0;
  }

  struct lev_langs *E = alloc_log_event (LEV_TARG_LANG_DEL + 1, 12, user_id);
  E->langs[0] = lang_id;

  return del_langs (U, E->langs, 1);
}
