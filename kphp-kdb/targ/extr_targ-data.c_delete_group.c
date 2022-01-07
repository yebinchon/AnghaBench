
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mult_iterator {scalar_t__ pos; int (* jump_to ) (int ,scalar_t__) ;} ;
struct lev_delete_group {int group_id; } ;
typedef int iterator_t ;


 scalar_t__ INFTY ;
 unsigned int MAX_USERS ;
 scalar_t__* R ;
 int assert (int) ;
 scalar_t__ build_word_iterator (int ) ;
 int clear_tmp_word_data () ;
 int delete_single_user_group_fast (scalar_t__,int) ;
 int dyn_mark (int ) ;
 int dyn_release (int ) ;
 int field_value_hash (int ,int) ;
 scalar_t__ get_word_count_nomult (int ) ;
 int q_grp_id ;
 int stub1 (int ,scalar_t__) ;

__attribute__((used)) static int delete_group (struct lev_delete_group *E) {
  int group_id = E->group_id, num = 0, i;

  clear_tmp_word_data ();

  if (get_word_count_nomult (field_value_hash (q_grp_id, group_id))) {
    dyn_mark (0);
    struct mult_iterator *I = (struct mult_iterator *) build_word_iterator (field_value_hash (q_grp_id, group_id));
    while (I->pos < INFTY) {
      R[num++] = I->pos;
      I->jump_to ((iterator_t)I, I->pos + 1);
    }
    dyn_release (0);
    assert ((unsigned)num <= MAX_USERS);
    for (i = 0; i < num; i++) {
      delete_single_user_group_fast (R[i], group_id);
    }
  }

  return 1;
}
