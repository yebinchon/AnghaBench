
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ object_old_n; int * object_type_ids; int object_chg; int * object_indexes; int * object_data; scalar_t__ aio; scalar_t__ metafile_len; int * metafile; int * prev_used; int * next_used; int flags; int chg_list_global; int chg_list_st; int chg_list_cur; int * object_ratings; int * object_names; scalar_t__ object_size; int chg_list_en; int object_table; int pref_table; } ;
typedef TYPE_1__ user ;


 int CHG_INIT (int ) ;
 int SET_USER_INFO (int ,int) ;
 int SET_USER_RATING_STATE (int ,int) ;
 int chg_list_init (int *,int *) ;
 int global_changes_st ;
 int htbl_init (int *) ;
 int ltbl_init (int *) ;

void user_init (user *u) {



  ltbl_init (&u->object_table);
  chg_list_init (&u->chg_list_st, &u->chg_list_en);
  u->object_size = 0;



  u->object_ratings = ((void*)0);
  u->chg_list_cur = u->chg_list_st;
  u->chg_list_global = global_changes_st;
  u->flags = SET_USER_INFO(0, -1);
  u->flags = SET_USER_RATING_STATE(u->flags, 1);

  u->next_used = ((void*)0);
  u->prev_used = ((void*)0);

  u->metafile = ((void*)0);
  u->metafile_len = 0;
  u->aio = 0;





  CHG_INIT (u->object_chg);

  u->object_type_ids = ((void*)0);
  u->object_old_n = 0;
}
