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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 char FUNC1 (char const*) ; 
 char** separators ; 
 scalar_t__ FUNC2 (char**,char) ; 

__attribute__((used)) static void FUNC3(FILE *outfile, const char *tok, const char *val)
{
	char c;

	if (!tok) {
		FUNC0(outfile, "%s\n", val);
		return;
	}

	c = FUNC1(tok);
	if (!c)
		return;
	if (FUNC2(separators, c))
		FUNC0(outfile, "%s%s\n", tok, val);
	else
		FUNC0(outfile, "%s%c %s\n", tok, separators[0], val);
}