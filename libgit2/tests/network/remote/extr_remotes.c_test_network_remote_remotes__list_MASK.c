#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int count; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7(void)
{
	git_strarray list;
	git_config *cfg;

	FUNC1(FUNC4(&list, _repo));
	FUNC0(list.count == 5);
	FUNC6(&list);

	FUNC1(FUNC5(&cfg, _repo));

	/* Create a new remote */
	FUNC1(FUNC3(cfg, "remote.specless.url", "http://example.com"));

	/* Update a remote (previously without any url/pushurl entry) */
	FUNC1(FUNC3(cfg, "remote.no-remote-url.pushurl", "http://example.com"));

	FUNC1(FUNC4(&list, _repo));
	FUNC0(list.count == 7);
	FUNC6(&list);

	FUNC2(cfg);
}