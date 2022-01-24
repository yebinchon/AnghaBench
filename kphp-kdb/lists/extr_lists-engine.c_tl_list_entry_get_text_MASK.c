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
struct tl_list_entry_get_text {int /*<<< orphan*/  object_id; int /*<<< orphan*/  list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_LIST_OBJECT_INTS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stats_buff ; 
 struct tl_act_extra* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tl_do_list_entry_get_text ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

struct tl_act_extra *FUNC5 (void) {
  struct tl_act_extra *extra = FUNC2 (stats_buff, sizeof (struct tl_list_entry_get_text), tl_do_list_entry_get_text);
  struct tl_list_entry_get_text *e = (void *)extra->extra;
  CHECK_LIST_OBJECT_INTS;
  if (FUNC0 (&e->list_id) < 0) {
    return 0;
  }
  if (FUNC1 (&e->object_id) < 0) {
    return 0;
  }
  FUNC3 ();
  if (FUNC4 ()) {
    return 0;
  }
  return extra;
}