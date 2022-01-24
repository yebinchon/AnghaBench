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
typedef  int /*<<< orphan*/  (* blob_creator_fn ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  repo ; 

__attribute__((used)) static void FUNC4(const char *path_to_file, const char *blob_from_path, blob_creator_fn creator)
{
	git_oid oid;
	FUNC1(path_to_file, "1..2...3... Can you hear me?\n");

	FUNC2(creator(&oid, repo, blob_from_path));
	FUNC0(FUNC3(&oid, "da5e4f20c91c81b44a7e298f3d3fb3fe2f178e32") == 0);
}