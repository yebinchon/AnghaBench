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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */

__attribute__((used)) static void
FUNC0(void *buf, uint32_t u)
{
	uint8_t *p = buf;

	p[0] = ((uint8_t) ((u >> 24) & 0xff));
	p[1] = ((uint8_t) ((u >> 16) & 0xff));
	p[2] = ((uint8_t) ((u >> 8) & 0xff));
	p[3] = ((uint8_t) (u & 0xff));
}