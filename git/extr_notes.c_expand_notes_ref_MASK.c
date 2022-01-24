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
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ,char*,int) ; 

void FUNC2(struct strbuf *sb)
{
	if (FUNC0(sb->buf, "refs/notes/"))
		return; /* we're happy */
	else if (FUNC0(sb->buf, "notes/"))
		FUNC1(sb, 0, "refs/", 5);
	else
		FUNC1(sb, 0, "refs/notes/", 11);
}