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
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  note_list_cb ; 

void FUNC3(void)
{
	int error;
	unsigned int retrieved_notes = 0;

	error = FUNC2(_repo, "refs/notes/i-am-not", note_list_cb, &retrieved_notes);
	FUNC1(error);
	FUNC0(GIT_ENOTFOUND, error);

	FUNC0(0, retrieved_notes);
}