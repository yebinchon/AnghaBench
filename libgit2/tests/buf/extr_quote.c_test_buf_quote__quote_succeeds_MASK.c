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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

void FUNC1(void)
{
	FUNC0("", "");
	FUNC0("foo", "foo");
	FUNC0("foo/bar/baz.c", "foo/bar/baz.c");
	FUNC0("foo bar", "foo bar");
	FUNC0("\"\\\"leading quote\"", "\"leading quote");
	FUNC0("\"slash\\\\y\"", "slash\\y");
	FUNC0("\"foo\\r\\nbar\"", "foo\r\nbar");
	FUNC0("\"foo\\177bar\"", "foo\177bar");
	FUNC0("\"foo\\001bar\"", "foo\001bar");
	FUNC0("\"foo\\377bar\"", "foo\377bar");
}