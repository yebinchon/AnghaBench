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
struct tl_list_intersect {int id_ints; int mode; int count; int is_intersect; int limit; scalar_t__ arr; int /*<<< orphan*/  list_id; } ;
struct tl_act_extra {int size; scalar_t__ extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_LIST_OBJECT_INTS ; 
 int /*<<< orphan*/  TL_ERROR_VALUE_NOT_IN_RANGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int object_id_ints ; 
 int /*<<< orphan*/  stats_buff ; 
 struct tl_act_extra* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tl_do_list_intersect ; 
 int /*<<< orphan*/  tl_do_list_intersect_full ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC6 (char*,int) ; 

struct tl_act_extra *FUNC7 (int is_intersect, int is_wild, int is_limit, int is_full) {
  struct tl_act_extra *extra = FUNC1 (stats_buff, sizeof (struct tl_list_intersect), is_full ? tl_do_list_intersect_full : tl_do_list_intersect);
  struct tl_list_intersect *e = (void *)extra->extra;

  CHECK_LIST_OBJECT_INTS;
  if (FUNC0 (&e->list_id) < 0) {
    return 0;
  }

  e->id_ints = is_wild ? FUNC4 () : object_id_ints;
  e->mode = FUNC4 ();
  e->count = FUNC4 ();
  e->is_intersect = is_intersect;

  int bytes = 4 * (e->id_ints);
  if (bytes * e->count > (1 << 20) || e->count < 0) {
    FUNC5 (TL_ERROR_VALUE_NOT_IN_RANGE, "Too long query. Total %d bytes", bytes * e->count);
    return 0;
  }
  if (FUNC6 ((char *)e->arr, bytes * e->count) < 0) {
    return 0;
  }
  extra->size += bytes * (e->count + 1);
  
  e->limit = is_limit ? FUNC4 () : -1;

  FUNC2 ();
  if (FUNC3 ()) {
    return 0;
  }
  return extra;  
}