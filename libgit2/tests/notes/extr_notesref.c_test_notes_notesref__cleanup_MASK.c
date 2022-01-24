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

/* Variables and functions */
 int /*<<< orphan*/ * _cfg ; 
 int /*<<< orphan*/ * _note ; 
 int /*<<< orphan*/ * _repo ; 
 int /*<<< orphan*/ * _sig ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	FUNC2(_note);
	_note = NULL;

	FUNC4(_sig);
	_sig = NULL;

	FUNC1(_cfg);
	_cfg = NULL;

	FUNC3(_repo);
	_repo = NULL;

	FUNC0("testrepo.git");
}