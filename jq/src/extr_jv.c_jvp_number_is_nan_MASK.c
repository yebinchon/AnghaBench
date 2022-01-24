#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ number; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef  TYPE_2__ jv ;
typedef  int /*<<< orphan*/  decNumber ;

/* Variables and functions */
 int /*<<< orphan*/  JVP_FLAGS_NUMBER_LITERAL ; 
 scalar_t__ FUNC0 (TYPE_2__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_NUMBER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__) ; 

int FUNC5(jv n) {
  FUNC2(FUNC1(n, JV_KIND_NUMBER));

  if (FUNC0(n, JVP_FLAGS_NUMBER_LITERAL)) {
    decNumber *pdec = FUNC4(n);
    return FUNC3(pdec);
  } else {
    return n.u.number != n.u.number;
  }
}