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
typedef  int /*<<< orphan*/  decFloat ;
typedef  int /*<<< orphan*/  decContext ;
typedef  scalar_t__ Int ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

decFloat * FUNC5(decFloat *result,
                       const decFloat *dfl, const decFloat *dfr,
                       decContext *set) {
  Int comp;
  if (FUNC0(dfl)) {
    // sNaN or both NaNs leads to normal NaN processing
    if (FUNC0(dfr) || FUNC1(dfl)) return FUNC3(result, dfl, dfr, set);
    return FUNC2(result, dfr);        // RHS is numeric
    }
  if (FUNC0(dfr)) {
    // sNaN leads to normal NaN processing (both NaN handled above)
    if (FUNC1(dfr)) return FUNC3(result, dfl, dfr, set);
    return FUNC2(result, dfl);        // LHS is numeric
    }
  // Both operands are numeric; numeric comparison needed -- use
  // total order for a well-defined choice (and +0 > -0)
  comp=FUNC4(dfl, dfr, 1);
  if (comp<=0) return FUNC2(result, dfl);
  return FUNC2(result, dfr);
  }