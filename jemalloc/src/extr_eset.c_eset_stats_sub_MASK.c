#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t pszind_t ;
struct TYPE_3__ {int /*<<< orphan*/ * nbytes; int /*<<< orphan*/ * nextents; } ;
typedef  TYPE_1__ eset_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(eset_t *eset, pszind_t pind, size_t sz) {
	size_t cur = FUNC0(&eset->nextents[pind], ATOMIC_RELAXED);
	FUNC1(&eset->nextents[pind], cur - 1, ATOMIC_RELAXED);
	cur = FUNC0(&eset->nbytes[pind], ATOMIC_RELAXED);
	FUNC1(&eset->nbytes[pind], cur - sz, ATOMIC_RELAXED);
}