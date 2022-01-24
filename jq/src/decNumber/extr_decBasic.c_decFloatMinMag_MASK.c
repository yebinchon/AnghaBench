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
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

decFloat * FUNC5(decFloat *result,
                       const decFloat *dfl, const decFloat *dfr,
                       decContext *set) {
  Int comp;
  decFloat absl, absr;
  if (FUNC0(dfl) || FUNC0(dfr)) return FUNC3(result, dfl, dfr, set);

  FUNC2(&absl, dfl);
  FUNC2(&absr, dfr);
  comp=FUNC4(&absl, &absr, 0);
  if (comp<0) return FUNC1(result, dfl);
  if (comp>0) return FUNC1(result, dfr);
  return FUNC3(result, dfl, dfr, set);
  }