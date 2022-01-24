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
struct timer8_priv {scalar_t__ mapbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMFA ; 
 int /*<<< orphan*/  CMIEA ; 
 scalar_t__ TCORA ; 
 scalar_t__ _8TCNT ; 
 scalar_t__ _8TCR ; 
 scalar_t__ _8TCSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(struct timer8_priv *p, unsigned long delta)
{
	if (delta >= 0x10000)
		FUNC3("delta out of range\n");
	FUNC0(CMIEA, p->mapbase + _8TCR);
	FUNC2(delta, p->mapbase + TCORA);
	FUNC2(0x0000, p->mapbase + _8TCNT);
	FUNC0(CMFA, p->mapbase + _8TCSR);
	FUNC1(CMIEA, p->mapbase + _8TCR);
}