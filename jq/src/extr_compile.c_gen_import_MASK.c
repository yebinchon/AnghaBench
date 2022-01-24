#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jv ;
struct TYPE_5__ {int /*<<< orphan*/  constant; } ;
struct TYPE_6__ {TYPE_1__ imm; } ;
typedef  TYPE_2__ inst ;
typedef  int /*<<< orphan*/  block ;

/* Variables and functions */
 int /*<<< orphan*/  DEPS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

block FUNC7(const char* name, const char* as, int is_data) {
  inst* i = FUNC1(DEPS);
  jv meta = FUNC3();
  if (as != NULL)
    meta = FUNC4(meta, FUNC5("as"), FUNC5(as));
  meta = FUNC4(meta, FUNC5("is_data"), is_data ? FUNC6() : FUNC2());
  meta = FUNC4(meta, FUNC5("relpath"), FUNC5(name));
  i->imm.constant = meta;
  return FUNC0(i);
}