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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(int fd)
{
	struct strbuf line = STRBUF_INIT;
	FILE *fp;

	fp = FUNC2(fd, "r");
	if (fp == NULL) {
		FUNC3("fdopen of error channel failed");
		FUNC0(fd);
		return;
	}

	while (FUNC4(&line, fp) != EOF) {
		FUNC3("%s", line.buf);
		FUNC6(&line, 0);
	}

	FUNC5(&line);
	FUNC1(fp);
}