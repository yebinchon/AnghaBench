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
struct tr2_dst {int initialized; scalar_t__ need_close; scalar_t__ fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

void FUNC1(struct tr2_dst *dst)
{
	if (dst->need_close)
		FUNC0(dst->fd);
	dst->fd = 0;
	dst->initialized = 1;
	dst->need_close = 0;
}