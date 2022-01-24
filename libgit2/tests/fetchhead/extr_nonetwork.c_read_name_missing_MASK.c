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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC5(const char *ref_name, const char *remote_url,
	const git_oid *oid, unsigned int is_merge, void *payload)
{
	git_oid expected;

	FUNC0(payload);

	FUNC4(&expected, "49322bb17d3acc9146f98c97d078513228bbf3c0");

	FUNC1(ref_name == NULL);
	FUNC3("remote_url", remote_url);
	FUNC2(&expected, oid);
	FUNC1(is_merge == 0);

	return 0;
}