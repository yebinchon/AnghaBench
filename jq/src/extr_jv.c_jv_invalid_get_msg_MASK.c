#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  errmsg; } ;
typedef  TYPE_2__ jvp_invalid ;
struct TYPE_11__ {scalar_t__ ptr; } ;
struct TYPE_13__ {TYPE_1__ u; } ;
typedef  TYPE_3__ jv ;

/* Variables and functions */
 int /*<<< orphan*/  JVP_FLAGS_INVALID_MSG ; 
 scalar_t__ FUNC0 (TYPE_3__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_INVALID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__) ; 
 TYPE_3__ FUNC5 () ; 

jv FUNC6(jv inv) {
  FUNC2(FUNC1(inv, JV_KIND_INVALID));

  jv x;
  if (FUNC0(inv, JVP_FLAGS_INVALID_MSG)) {
    x = FUNC3(((jvp_invalid*)inv.u.ptr)->errmsg);
  }
  else {
    x = FUNC5();
  }

  FUNC4(inv);
  return x;
}