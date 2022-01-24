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
struct tl_list_sorted {void* limit; void* mode; void* and_mask; void* xor_mask; int /*<<< orphan*/  list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_LIST_OBJECT_INTS ; 
 void* MAX_RES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stats_buff ; 
 struct tl_act_extra* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tl_do_list_sorted ; 
 int /*<<< orphan*/  tl_do_list_sorted_full ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 void* FUNC4 () ; 

struct tl_act_extra *FUNC5 (int is_full, int has_limit) {
  struct tl_act_extra *extra = FUNC1 (stats_buff, sizeof (struct tl_list_sorted), is_full ? tl_do_list_sorted_full : tl_do_list_sorted);
  struct tl_list_sorted *e = (void *)extra->extra;
  
  CHECK_LIST_OBJECT_INTS;
  if (FUNC0 (&e->list_id) < 0) {
    return 0;
  }
  
  e->xor_mask = FUNC4 ();
  e->and_mask = FUNC4 ();
  e->mode = FUNC4 ();
  e->limit = has_limit ? FUNC4 () : MAX_RES;
  
  FUNC2 ();
  if (FUNC3 ()) {
    return 0;
  }
  return extra;
}