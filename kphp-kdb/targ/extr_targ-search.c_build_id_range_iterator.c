
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct id_range_iterator {int pos; int lim; int (* jump_to ) (int ,int) ;} ;
typedef int iterator_t ;


 int build_empty_iterator () ;
 int id_range_iterator_jump_to (int ,int) ;
 int log_split_min ;
 int log_split_mod ;
 int max_uid ;
 struct id_range_iterator* zmalloc (int) ;

iterator_t build_id_range_iterator (int min_user_id, int max_user_id) {
  int _min_uid = (min_user_id - log_split_min + log_split_mod - 1) / log_split_mod;
  int _max_uid = (max_user_id - log_split_min + log_split_mod) / log_split_mod - 1;
  if (_max_uid > max_uid) {
    _max_uid = max_uid;
  }
  if (_min_uid <= 0) {
    _min_uid = 0;
  }
  if (_min_uid > _max_uid) {
    return build_empty_iterator ();
  }
  struct id_range_iterator *I = zmalloc (sizeof (struct id_range_iterator));
  I->jump_to = id_range_iterator_jump_to;
  I->pos = _min_uid - 1;
  I->lim = _max_uid;
  id_range_iterator_jump_to ((iterator_t) I, _min_uid);
  return (iterator_t) I;
}
