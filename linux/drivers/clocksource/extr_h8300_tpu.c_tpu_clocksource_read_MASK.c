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
typedef  unsigned long long u64 ;
struct tpu_priv {int /*<<< orphan*/  lock; } ;
struct clocksource {int dummy; } ;

/* Variables and functions */
 struct tpu_priv* FUNC0 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (struct tpu_priv*,unsigned long long*) ; 

__attribute__((used)) static u64 FUNC4(struct clocksource *cs)
{
	struct tpu_priv *p = FUNC0(cs);
	unsigned long flags;
	unsigned long long value;

	FUNC1(&p->lock, flags);
	if (FUNC3(p, &value))
		value += 0x100000000;
	FUNC2(&p->lock, flags);

	return value;
}