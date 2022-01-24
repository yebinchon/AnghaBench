#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  errmsg; } ;
typedef  TYPE_2__ jvp_invalid ;
struct TYPE_7__ {scalar_t__ ptr; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef  TYPE_3__ jv ;

/* Variables and functions */
 int /*<<< orphan*/  JVP_FLAGS_INVALID_MSG ; 
 scalar_t__ FUNC0 (TYPE_3__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_INVALID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(jv x) {
  FUNC2(FUNC1(x, JV_KIND_INVALID));
  if (FUNC0(x, JVP_FLAGS_INVALID_MSG) && FUNC5(x.u.ptr)) {
    FUNC3(((jvp_invalid*)x.u.ptr)->errmsg);
    FUNC4(x.u.ptr);
  }
}