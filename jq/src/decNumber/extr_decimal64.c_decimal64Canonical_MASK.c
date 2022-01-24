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
typedef  int /*<<< orphan*/  decimal64 ;
typedef  int /*<<< orphan*/  decNumber ;
typedef  int /*<<< orphan*/  decContext ;

/* Variables and functions */
 int /*<<< orphan*/  DEC_INIT_DECIMAL64 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

decimal64 * FUNC3(decimal64 *result, const decimal64 *d64) {
  decNumber dn;                         // work
  decContext dc;                        // ..
  FUNC0(&dc, DEC_INIT_DECIMAL64);
  FUNC2(d64, &dn);
  FUNC1(result, &dn, &dc);// result will now be canonical
  return result;
  }