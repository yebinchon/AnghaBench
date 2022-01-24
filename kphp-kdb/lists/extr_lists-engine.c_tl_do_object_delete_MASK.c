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
struct tl_object_delete {int /*<<< orphan*/  object_id; } ;
struct tl_act_extra {scalar_t__ extra; } ;

/* Variables and functions */
 int TL_BOOL_STAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3 (struct tl_act_extra *extra) {
  struct tl_object_delete *e = (void *)extra->extra;
  int res = FUNC1 (e->object_id);
  FUNC0 (res != -2);
  FUNC2 (TL_BOOL_STAT);
  FUNC2 (res > 0);
  FUNC2 (res <= 0);
  FUNC2 (0);
  return 0;
}