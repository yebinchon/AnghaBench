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
typedef  int /*<<< orphan*/  git_transport ;
typedef  int /*<<< orphan*/  git_remote ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static int FUNC1(
	git_transport **out,
	git_remote *owner,
	void *payload)
{
	*((int*)payload) = 1;

	return FUNC0(out, owner, payload);
}