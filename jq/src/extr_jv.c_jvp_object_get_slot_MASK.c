#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct object_slot {int dummy; } ;
typedef  int /*<<< orphan*/  jv ;
struct TYPE_2__ {struct object_slot* elements; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct object_slot* FUNC3(jv object, int slot) {
  FUNC0(slot == -1 || (slot >= 0 && slot < FUNC2(object)));
  if (slot == -1) return 0;
  else return &FUNC1(object)->elements[slot];
}