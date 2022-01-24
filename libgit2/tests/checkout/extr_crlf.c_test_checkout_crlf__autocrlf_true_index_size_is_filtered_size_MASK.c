#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  file_size; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_7__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_2__ git_checkout_options ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_CRLF_TEXT_RAW ; 
 int /*<<< orphan*/  ALL_LF_TEXT_AS_CRLF ; 
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(void)
{
	git_index *index;
	const git_index_entry *entry;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	opts.checkout_strategy = GIT_CHECKOUT_FORCE;

	FUNC2(g_repo, "core.autocrlf", true);

	FUNC6(&index, g_repo);
	FUNC8(index);

	FUNC3(g_repo, &opts);

	FUNC0((entry = FUNC5(index, "all-lf", 0)) != NULL);

	FUNC1(FUNC7(ALL_LF_TEXT_AS_CRLF), entry->file_size);

	FUNC0((entry = FUNC5(index, "all-crlf", 0)) != NULL);
	FUNC1(FUNC7(ALL_CRLF_TEXT_RAW), entry->file_size);

	FUNC4(index);
}