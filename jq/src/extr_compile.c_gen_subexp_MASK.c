#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jv ;
struct TYPE_16__ {TYPE_1__* first; } ;
typedef  TYPE_2__ block ;
struct TYPE_15__ {scalar_t__ op; } ;

/* Variables and functions */
 TYPE_2__ FUNC0 (TYPE_2__,TYPE_2__,TYPE_2__) ; 
 int /*<<< orphan*/  DUP ; 
 scalar_t__ LOADK ; 
 int /*<<< orphan*/  SUBEXP_BEGIN ; 
 int /*<<< orphan*/  SUBEXP_END ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__) ; 
 scalar_t__ FUNC3 (TYPE_2__) ; 
 scalar_t__ FUNC4 (TYPE_2__) ; 
 TYPE_2__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC6 (int /*<<< orphan*/ ) ; 

block FUNC7(block a) {
  if (FUNC3(a)) {
    return FUNC6(DUP);
  }
  if (FUNC4(a) && a.first->op == LOADK) {
    jv c = FUNC1(a);
    FUNC2(a);
    return FUNC5(c);
  }
  return FUNC0(FUNC6(SUBEXP_BEGIN), a, FUNC6(SUBEXP_END));
}