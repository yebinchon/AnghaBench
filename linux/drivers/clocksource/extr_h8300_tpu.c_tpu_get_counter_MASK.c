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
struct tpu_priv {scalar_t__ mapbase1; } ;

/* Variables and functions */
 int TCFV ; 
 scalar_t__ TSR ; 
 int FUNC0 (scalar_t__) ; 
 unsigned long FUNC1 (struct tpu_priv*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct tpu_priv *p, unsigned long long *val)
{
	unsigned long v1, v2, v3;
	int o1, o2;

	o1 = FUNC0(p->mapbase1 + TSR) & TCFV;

	/* Make sure the timer value is stable. Stolen from acpi_pm.c */
	do {
		o2 = o1;
		v1 = FUNC1(p);
		v2 = FUNC1(p);
		v3 = FUNC1(p);
		o1 = FUNC0(p->mapbase1 + TSR) & TCFV;
	} while (FUNC2((o1 != o2) || (v1 > v2 && v1 < v3)
			  || (v2 > v3 && v2 < v1) || (v3 > v1 && v3 < v2)));

	*val = v2;
	return o1;
}