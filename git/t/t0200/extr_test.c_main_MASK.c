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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(void)
{
	/* TRANSLATORS: This is a test. You don't need to translate it. */
	FUNC2(FUNC0("TEST: A C test string"));

	/* TRANSLATORS: This is a test. You don't need to translate it. */
	FUNC1(FUNC0("TEST: A C test string %s"), "variable");

	/* TRANSLATORS: This is a test. You don't need to translate it. */
	FUNC1(FUNC0("TEST: Hello World!"));

	/* TRANSLATORS: This is a test. You don't need to translate it. */
	FUNC1(FUNC0("TEST: Old English Runes"));

	/* TRANSLATORS: This is a test. You don't need to translate it. */
	FUNC1(FUNC0("TEST: ‘single’ and “double” quotes"));
}