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
struct entropy_store {int /*<<< orphan*/  lock; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC0 (struct entropy_store*,void const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct entropy_store *r, const void *in,
			   int nbytes)
{
	unsigned long flags;

	FUNC3(r->name, nbytes, _RET_IP_);
	FUNC1(&r->lock, flags);
	FUNC0(r, in, nbytes);
	FUNC2(&r->lock, flags);
}