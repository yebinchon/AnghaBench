#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct object_slot {int /*<<< orphan*/  value; int /*<<< orphan*/  string; } ;
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef  TYPE_2__ jv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__,int /*<<< orphan*/ ) ; 
 scalar_t__ JV_KIND_NULL ; 
 int /*<<< orphan*/  JV_KIND_OBJECT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct object_slot* FUNC5 (TYPE_2__,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__) ; 
 int FUNC7 (TYPE_2__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(jv o) {
  FUNC1(FUNC0(o, JV_KIND_OBJECT));
  if (FUNC8(o.u.ptr)) {
    for (int i=0; i<FUNC7(o); i++) {
      struct object_slot* slot = FUNC5(o, i);
      if (FUNC3(slot->string) != JV_KIND_NULL) {
        FUNC9(slot->string);
        FUNC2(slot->value);
      }
    }
    FUNC4(FUNC6(o));
  }
}