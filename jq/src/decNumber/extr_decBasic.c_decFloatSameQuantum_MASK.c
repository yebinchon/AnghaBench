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
typedef  int uInt ;
typedef  int /*<<< orphan*/  decFloat ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 

uInt FUNC4(const decFloat *dfl, const decFloat *dfr) {
  if (FUNC2(dfl) || FUNC2(dfr)) {
    if (FUNC1(dfl) && FUNC1(dfr)) return 1;
    if (FUNC0(dfl) && FUNC0(dfr)) return 1;
    return 0;  // any other special mixture gives false
    }
  if (FUNC3(dfl)==FUNC3(dfr)) return 1; // biased exponents match
  return 0;
  }