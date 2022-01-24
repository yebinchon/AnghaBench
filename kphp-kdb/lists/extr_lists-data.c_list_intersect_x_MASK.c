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
typedef  int /*<<< orphan*/  object_id_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__* LA ; 
 scalar_t__* LE ; 
 scalar_t__ MAX_OBJECT_ID ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  object_id_ints_adjusted ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4 (object_id_t x) {
  int p;
  while (FUNC0(LA < LE) && (p = FUNC2 (FUNC1 (LA, 0), x)) < 0) {
    LA += object_id_ints_adjusted;
  }

  #ifdef LISTS_Z
  if (LA >= LE) {
    return 0;
  }
  #else
  if (*LA == MAX_OBJECT_ID) {
    return 0;
  }
  #endif
  if (!p) {
    FUNC3 (FUNC1 (LA, 0));
    LA += object_id_ints_adjusted;
  }
  return 0;
}