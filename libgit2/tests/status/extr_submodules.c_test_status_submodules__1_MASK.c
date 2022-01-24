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
struct TYPE_4__ {int /*<<< orphan*/  entry_count; } ;
typedef  TYPE_1__ status_entry_counts ;

/* Variables and functions */
 int /*<<< orphan*/  cb_status__match ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  expected_files ; 
 int /*<<< orphan*/  expected_status ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(void)
{
	status_entry_counts counts;

	g_repo = FUNC6();

	FUNC0(FUNC3("submodules/.git"));
	FUNC0(FUNC3("submodules/testrepo/.git"));
	FUNC0(FUNC4("submodules/.gitmodules"));

	FUNC7(counts, expected_files, expected_status);

	FUNC2( FUNC5(g_repo, cb_status__match, &counts) );

	FUNC1(6, counts.entry_count);
}