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
 char* DEFAULT_EDITOR ; 
 char* editor_program ; 
 char* FUNC0 (char*) ; 
 int FUNC1 () ; 

const char *FUNC2(void)
{
	const char *editor = FUNC0("GIT_EDITOR");
	int terminal_is_dumb = FUNC1();

	if (!editor && editor_program)
		editor = editor_program;
	if (!editor && !terminal_is_dumb)
		editor = FUNC0("VISUAL");
	if (!editor)
		editor = FUNC0("EDITOR");

	if (!editor && terminal_is_dumb)
		return NULL;

	if (!editor)
		editor = DEFAULT_EDITOR;

	return editor;
}