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
struct arasan_cf_dev {scalar_t__ vbase; } ;

/* Variables and functions */
 int CFHOST_ENB ; 
 scalar_t__ OP_MODE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC2(struct arasan_cf_dev *acdev)
{
	FUNC1(FUNC0(acdev->vbase + OP_MODE) & ~CFHOST_ENB,
			acdev->vbase + OP_MODE);
	FUNC1(FUNC0(acdev->vbase + OP_MODE) | CFHOST_ENB,
			acdev->vbase + OP_MODE);
}