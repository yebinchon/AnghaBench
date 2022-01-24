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
typedef  int /*<<< orphan*/  decNumber ;
typedef  int /*<<< orphan*/  decContext ;
typedef  int /*<<< orphan*/  Int ;

/* Variables and functions */
 int /*<<< orphan*/  DECUNCONT ; 
 int /*<<< orphan*/  DECUNRESU ; 
 int /*<<< orphan*/  DECUNUSED ; 
 int /*<<< orphan*/  DEC_INIT_BASE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

decNumber * FUNC3(decNumber *dn) {
  Int  dropped;                    // work
  decContext set;                  // ..
  #if DECCHECK
  if (decCheckOperands(DECUNRESU, DECUNUSED, dn, DECUNCONT)) return dn;
  #endif
  FUNC1(&set, DEC_INIT_BASE);    // clamp=0
  return FUNC2(dn, &set, 0, 1, &dropped);
  }