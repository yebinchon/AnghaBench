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
typedef  int /*<<< orphan*/  git_config_backend ;
struct TYPE_3__ {int /*<<< orphan*/  cfg; int /*<<< orphan*/  entries; } ;
typedef  TYPE_1__ config_memory_backend ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(git_config_backend *_backend)
{
	config_memory_backend *backend = (config_memory_backend *)_backend;

	if (backend == NULL)
		return;

	FUNC2(backend->entries);
	FUNC1(&backend->cfg);
	FUNC0(backend);
}