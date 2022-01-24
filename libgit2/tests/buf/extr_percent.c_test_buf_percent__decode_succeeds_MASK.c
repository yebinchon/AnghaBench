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
	FUNC0(" ", "%20");
	FUNC0("a", "a");
	FUNC0(" a", "%20a");
	FUNC0("a ", "a%20");
	FUNC0("github.com", "github.com");
	FUNC0("github.com", "githu%62.com");
	FUNC0("github.com", "github%2ecom");
	FUNC0("foo bar baz", "foo%20bar%20baz");
	FUNC0("foo bar baz", "foo%20bar%20baz");
	FUNC0("foo bar ", "foo%20bar%20");
}