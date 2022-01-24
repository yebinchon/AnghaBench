#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int length; int /*<<< orphan*/ * elements; } ;
typedef  TYPE_2__ jvp_array ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_11__ {TYPE_1__ u; } ;
typedef  TYPE_3__ jv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JV_KIND_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (TYPE_3__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(jv a) {
  FUNC1(FUNC0(a, JV_KIND_ARRAY));
  if (FUNC5(a.u.ptr)) {
    jvp_array* array = FUNC4(a);
    for (int i=0; i<array->length; i++) {
      FUNC2(array->elements[i]);
    }
    FUNC3(array);
  }
}