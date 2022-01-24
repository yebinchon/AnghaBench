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
typedef  int /*<<< orphan*/  decimal32 ;
typedef  int /*<<< orphan*/  decNumber ;
typedef  int /*<<< orphan*/  decContext ;

/* Variables and functions */
 int /*<<< orphan*/  DEC_INIT_DECIMAL32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

decimal32 * FUNC3(decimal32 *result, const decimal32 *d32) {
  decNumber dn;                         // work
  decContext dc;                        // ..
  FUNC0(&dc, DEC_INIT_DECIMAL32);
  FUNC2(d32, &dn);
  FUNC1(result, &dn, &dc);// result will now be canonical
  return result;
  }