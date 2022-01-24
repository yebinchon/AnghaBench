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
struct wt_status {char** color_palette; int /*<<< orphan*/  use_color; } ;

/* Variables and functions */
 size_t WT_STATUS_HEADER ; 
 int WT_STATUS_ONBRANCH ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC2(int slot, struct wt_status *s)
{
	const char *c = "";
	if (FUNC1(s->use_color))
		c = s->color_palette[slot];
	if (slot == WT_STATUS_ONBRANCH && FUNC0(c))
		c = s->color_palette[WT_STATUS_HEADER];
	return c;
}