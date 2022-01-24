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
struct tpu_priv {int cs_enabled; scalar_t__ mapbase2; scalar_t__ mapbase1; } ;
struct clocksource {int dummy; } ;

/* Variables and functions */
 scalar_t__ TCNT ; 
 scalar_t__ TCR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct tpu_priv* FUNC1 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct clocksource *cs)
{
	struct tpu_priv *p = FUNC1(cs);

	FUNC0(p->cs_enabled);

	FUNC2(0, p->mapbase1 + TCNT);
	FUNC2(0, p->mapbase2 + TCNT);
	FUNC3(0x0f, p->mapbase1 + TCR);
	FUNC3(0x03, p->mapbase2 + TCR);

	p->cs_enabled = true;
	return 0;
}