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
struct locfile {int dummy; } ;
typedef  int /*<<< orphan*/  block ;

/* Variables and functions */
 int /*<<< orphan*/  OP_IS_CALL_PSEUDO ; 
 int /*<<< orphan*/  UNKNOWN_LOCATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct locfile*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct locfile*,int /*<<< orphan*/ ,char*) ; 

int FUNC5(struct locfile* locations, block* answer) {
  int errs = FUNC3(locations, answer);
  if (errs) return errs;
  if (FUNC1(*answer)) {
    FUNC4(locations, UNKNOWN_LOCATION, "jq: error: library should only have function definitions, not a main expression");
    return 1;
  }
  FUNC0(FUNC2(*answer, OP_IS_CALL_PSEUDO));
  return 0;
}