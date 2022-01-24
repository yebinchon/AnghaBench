#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct object_slot {int /*<<< orphan*/  string; } ;
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 scalar_t__ JV_KIND_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct object_slot* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(jv object) {
  int n = 0;
  for (int i=0; i<FUNC2(object); i++) {
    struct object_slot* slot = FUNC1(object, i);
    if (FUNC0(slot->string) != JV_KIND_NULL) n++;
  }
  return n;
}