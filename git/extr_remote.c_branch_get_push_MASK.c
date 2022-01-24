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
struct strbuf {int dummy; } ;
struct branch {char const* push_tracking_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char const* FUNC1 (struct branch*,struct strbuf*) ; 
 char const* FUNC2 (struct strbuf*,int /*<<< orphan*/ ) ; 

const char *FUNC3(struct branch *branch, struct strbuf *err)
{
	if (!branch)
		return FUNC2(err, FUNC0("HEAD does not point to a branch"));

	if (!branch->push_tracking_ref)
		branch->push_tracking_ref = FUNC1(branch, err);
	return branch->push_tracking_ref;
}