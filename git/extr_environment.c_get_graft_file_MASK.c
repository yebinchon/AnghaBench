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
struct repository {char* graft_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

char *FUNC1(struct repository *r)
{
	if (!r->graft_file)
		FUNC0("git environment hasn't been setup");
	return r->graft_file;
}