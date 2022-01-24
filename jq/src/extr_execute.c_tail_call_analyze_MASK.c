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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 scalar_t__ CALL_JQ ; 
 scalar_t__ TAIL_CALL_JQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 

__attribute__((used)) static uint16_t FUNC2(uint16_t *pc) {
  FUNC0(*pc == CALL_JQ);
  pc++;
  // + 1 for the callee closure
  for (uint16_t nclosures = *pc++ + 1; nclosures > 0; pc++, nclosures--) {
    if (*pc++ == 0)
      return CALL_JQ;
  }
  if (FUNC1(pc))
    return TAIL_CALL_JQ;
  return CALL_JQ;
}