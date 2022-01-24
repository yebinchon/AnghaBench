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
struct tl_list_get {int mode; int limit; void* offset; int /*<<< orphan*/  list_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_LIST_OBJECT_INTS ; 
 int /*<<< orphan*/  TL_ERROR_BAD_VALUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stats_buff ; 
 struct tl_act_extra* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tl_do_list_get ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

struct tl_act_extra *FUNC6 (int full, int limit) {
  struct tl_act_extra *extra = FUNC1 (stats_buff, sizeof (struct tl_list_get), tl_do_list_get);
  struct tl_list_get *e = (void *)extra->extra;
  CHECK_LIST_OBJECT_INTS;
  if (FUNC0 (&e->list_id) < 0) {
    return 0;
  }
  e->mode = FUNC4 ();
  if (!full && (e->mode & ~(63 | (1 << 15)))) {
    FUNC5 (TL_ERROR_BAD_VALUE, "in non-full get list only modes 0..63 and bit 15 are supported");
    return 0;
  }
  if (!full) {
    e->mode |= (1 << 15);
  }
  if (limit) {
    e->limit = FUNC4 ();
    e->offset = FUNC4 ();
  } else {
    e->limit = -1;
    e->offset = 0;
  }
  FUNC2 ();
  if (FUNC3 ()) {
    return 0;
  }
  return extra;
}