#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int length; int /*<<< orphan*/ * elements; } ;
typedef  TYPE_1__ jvp_array ;
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static jv* FUNC5(jv a, int i) {
  FUNC1(FUNC0(a, JV_KIND_ARRAY));
  if (i >= 0 && i < FUNC2(a)) {
    jvp_array* array = FUNC4(a);
    FUNC1(i + FUNC3(a) < array->length);
    return &array->elements[i + FUNC3(a)];
  } else {
    return 0;
  }
}