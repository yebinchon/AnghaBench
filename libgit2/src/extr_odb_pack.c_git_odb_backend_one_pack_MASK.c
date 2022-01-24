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
struct pack_backend {int /*<<< orphan*/  packs; } ;
struct git_pack_file {int dummy; } ;
typedef  int /*<<< orphan*/  git_odb_backend ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct git_pack_file**,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct git_pack_file*) ; 
 scalar_t__ FUNC2 (struct pack_backend**,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(git_odb_backend **backend_out, const char *idx)
{
	struct pack_backend *backend = NULL;
	struct git_pack_file *packfile = NULL;

	if (FUNC2(&backend, 1) < 0)
		return -1;

	if (FUNC0(&packfile, idx) < 0 ||
		FUNC1(&backend->packs, packfile) < 0)
	{
		FUNC3((git_odb_backend *)backend);
		return -1;
	}

	*backend_out = (git_odb_backend *)backend;
	return 0;
}