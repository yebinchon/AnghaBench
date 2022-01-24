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
struct grep_source {int /*<<< orphan*/  identifier; int /*<<< orphan*/  path; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct grep_source*) ; 

void FUNC2(struct grep_source *gs)
{
	FUNC0(gs->name);
	FUNC0(gs->path);
	FUNC0(gs->identifier);
	FUNC1(gs);
}