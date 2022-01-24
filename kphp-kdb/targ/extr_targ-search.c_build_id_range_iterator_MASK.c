#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct id_range_iterator {int pos; int lim; int /*<<< orphan*/  (* jump_to ) (int /*<<< orphan*/ ,int) ;} ;
typedef  int /*<<< orphan*/  iterator_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int log_split_min ; 
 int log_split_mod ; 
 int max_uid ; 
 struct id_range_iterator* FUNC2 (int) ; 

iterator_t FUNC3 (int min_user_id, int max_user_id) {
  int _min_uid = (min_user_id - log_split_min + log_split_mod - 1) / log_split_mod;
  int _max_uid = (max_user_id - log_split_min + log_split_mod) / log_split_mod - 1;
  if (_max_uid > max_uid) {
    _max_uid = max_uid;
  }
  if (_min_uid <= 0) {
    _min_uid = 0;
  }
  if (_min_uid > _max_uid) {
    return FUNC0 ();
  }
  struct id_range_iterator *I = FUNC2 (sizeof (struct id_range_iterator));
  I->jump_to = id_range_iterator_jump_to;
  I->pos = _min_uid - 1;
  I->lim = _max_uid;
  FUNC1 ((iterator_t) I, _min_uid);
  return (iterator_t) I;
}