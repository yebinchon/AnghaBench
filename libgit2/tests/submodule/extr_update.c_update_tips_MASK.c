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
struct update_submodule_cb_payload {int update_tips_called; } ;
typedef  char git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 

__attribute__((used)) static int FUNC1(const char *refname, const git_oid *a, const git_oid *b, void *data)
{
	struct update_submodule_cb_payload *update_payload = data;

	FUNC0(refname);
	FUNC0(a);
	FUNC0(b);

	update_payload->update_tips_called = 1;

	return 1;
}