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
struct strbuf {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  cut_line ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

void FUNC4(struct strbuf *buf)
{
	const char *explanation = FUNC0("Do not modify or remove the line above.\nEverything below it will be ignored.");

	FUNC2(buf, "%s", cut_line);
	FUNC1(buf, explanation, FUNC3(explanation));
}