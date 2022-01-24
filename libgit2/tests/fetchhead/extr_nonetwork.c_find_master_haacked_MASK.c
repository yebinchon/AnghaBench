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
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int find_master_haacked_called ; 
 int found_haacked ; 
 int found_master ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

int FUNC3(const char *ref_name, const char *remote_url, const git_oid *oid, unsigned int is_merge, void *payload)
{
	FUNC0(remote_url);
	FUNC0(oid);
	FUNC0(payload);

	find_master_haacked_called = true;

	if (!FUNC2("refs/heads/master", ref_name)) {
		FUNC1(is_merge);
		found_master = true;
	}
	if (!FUNC2("refs/heads/haacked", ref_name)) {
		FUNC1(is_merge);
		found_haacked = true;
	}

	return 0;
}