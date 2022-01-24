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
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int,int,int) ; 

void FUNC1(void)
{
	FUNC0("a1B", "[[:alpha:]][[:digit:]][[:upper:]]", 1, 1, 1, 1);
	FUNC0("a", "[[:digit:][:upper:][:space:]]", 0, 1, 0, 1);
	FUNC0("A", "[[:digit:][:upper:][:space:]]", 1, 1, 1, 1);
	FUNC0("1", "[[:digit:][:upper:][:space:]]", 1, 1, 1, 1);
	FUNC0("1", "[[:digit:][:upper:][:spaci:]]", 0, 0, 0, 0);
	FUNC0(" ", "[[:digit:][:upper:][:space:]]", 1, 1, 1, 1);
	FUNC0(".", "[[:digit:][:upper:][:space:]]", 0, 0, 0, 0);
	FUNC0(".", "[[:digit:][:punct:][:space:]]", 1, 1, 1, 1);
	FUNC0("5", "[[:xdigit:]]", 1, 1, 1, 1);
	FUNC0("f", "[[:xdigit:]]", 1, 1, 1, 1);
	FUNC0("D", "[[:xdigit:]]", 1, 1, 1, 1);
	FUNC0("_", "[[:alnum:][:alpha:][:blank:][:cntrl:][:digit:][:graph:][:lower:][:print:][:punct:][:space:][:upper:][:xdigit:]]", 1, 1, 1, 1);
	FUNC0(".", "[^[:alnum:][:alpha:][:blank:][:cntrl:][:digit:][:lower:][:space:][:upper:][:xdigit:]]", 1, 1, 1, 1);
	FUNC0("5", "[a-c[:digit:]x-z]", 1, 1, 1, 1);
	FUNC0("b", "[a-c[:digit:]x-z]", 1, 1, 1, 1);
	FUNC0("y", "[a-c[:digit:]x-z]", 1, 1, 1, 1);
	FUNC0("q", "[a-c[:digit:]x-z]", 0, 0, 0, 0);
}