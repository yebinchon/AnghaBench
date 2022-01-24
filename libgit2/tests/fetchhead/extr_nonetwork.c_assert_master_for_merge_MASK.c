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
typedef  void git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

__attribute__((used)) static int FUNC2(const char *ref, const char *url, const git_oid *id, unsigned int is_merge, void *data)
{
	FUNC0(url);
	FUNC0(id);
	FUNC0(data);

	if (!FUNC1("refs/heads/master", ref) && !is_merge)
		return -1;

	return 0;
}