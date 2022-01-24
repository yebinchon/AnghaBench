#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ jvp_string ;
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(jv a, jv b) {
  FUNC1(FUNC0(a, JV_KIND_STRING));
  FUNC1(FUNC0(b, JV_KIND_STRING));
  jvp_string* stra = FUNC3(a);
  jvp_string* strb = FUNC3(b);
  if (FUNC2(stra) != FUNC2(strb)) return 0;
  return FUNC4(stra->data, strb->data, FUNC2(stra)) == 0;
}