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
struct tl_sublist_delete {int xor_mask; int and_mask; int /*<<< orphan*/  list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_LIST_OBJECT_INTS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stats_buff ; 
 struct tl_act_extra* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tl_do_sublist_delete ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 () ; 

struct tl_act_extra *FUNC5 (int ex) {
  struct tl_act_extra *extra = FUNC1 (stats_buff, sizeof (struct tl_sublist_delete), tl_do_sublist_delete);
  struct tl_sublist_delete *e = (void *)extra->extra;
  CHECK_LIST_OBJECT_INTS;
  if (FUNC0 (&e->list_id) < 0) {
    return 0;
  }
  
  e->xor_mask = FUNC4 ();
  e->and_mask = ex ? FUNC4 () : 7;

  FUNC2 ();
  if (FUNC3 ()) {
    return 0;
  }

  return extra;
}