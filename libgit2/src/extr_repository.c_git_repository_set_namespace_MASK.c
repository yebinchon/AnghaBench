#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * namespace; } ;
typedef  TYPE_1__ git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 

int FUNC2(git_repository *repo, const char *namespace)
{
	FUNC0(repo->namespace);

	if (namespace == NULL) {
		repo->namespace = NULL;
		return 0;
	}

	return (repo->namespace = FUNC1(namespace)) ? 0 : -1;
}