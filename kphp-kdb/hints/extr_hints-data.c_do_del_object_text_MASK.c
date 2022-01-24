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
struct lev_hints_del_object_text {long long object_id; } ;

/* Variables and functions */
 scalar_t__ LEV_HINTS_DEL_OBJECT_TEXT ; 
 struct lev_hints_del_object_text* FUNC0 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (long long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct lev_hints_del_object_text*) ; 

int FUNC4 (int object_type, long long object_id) {
  if (!FUNC2 (object_type) || !FUNC1 (object_id)) {
    return 0;
  }

  struct lev_hints_del_object_text *E =
    FUNC0 (LEV_HINTS_DEL_OBJECT_TEXT + object_type, sizeof (struct lev_hints_del_object_text), 0);

  E->object_id = object_id;

  return FUNC3 (E);
}