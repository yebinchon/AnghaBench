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
struct cpuinfo_x86 {int extended_cpuid_level; char* x86_model_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

__attribute__((used)) static void FUNC2(struct cpuinfo_x86 *c)
{
	unsigned int *v;
	char *p, *q, *s;

	if (c->extended_cpuid_level < 0x80000004)
		return;

	v = (unsigned int *)c->x86_model_id;
	FUNC0(0x80000002, &v[0], &v[1], &v[2], &v[3]);
	FUNC0(0x80000003, &v[4], &v[5], &v[6], &v[7]);
	FUNC0(0x80000004, &v[8], &v[9], &v[10], &v[11]);
	c->x86_model_id[48] = 0;

	/* Trim whitespace */
	p = q = s = &c->x86_model_id[0];

	while (*p == ' ')
		p++;

	while (*p) {
		/* Note the last non-whitespace index */
		if (!FUNC1(*p))
			s = q;

		*q++ = *p++;
	}

	*(s + 1) = '\0';
}