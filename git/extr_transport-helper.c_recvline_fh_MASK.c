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
struct strbuf {char* buf; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC1 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

__attribute__((used)) static int FUNC3(FILE *helper, struct strbuf *buffer)
{
	FUNC2(buffer);
	if (debug)
		FUNC0(stderr, "Debug: Remote helper: Waiting...\n");
	if (FUNC1(buffer, helper) == EOF) {
		if (debug)
			FUNC0(stderr, "Debug: Remote helper quit.\n");
		return 1;
	}

	if (debug)
		FUNC0(stderr, "Debug: Remote helper: <- %s\n", buffer->buf);
	return 0;
}