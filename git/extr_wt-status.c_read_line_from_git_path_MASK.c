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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 char* FUNC3 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

__attribute__((used)) static char *FUNC6(const char *filename)
{
	struct strbuf buf = STRBUF_INIT;
	FILE *fp = FUNC1(FUNC2("%s", filename), "r");

	if (!fp) {
		FUNC5(&buf);
		return NULL;
	}
	FUNC4(&buf, fp);
	if (!FUNC0(fp)) {
		return FUNC3(&buf, NULL);
	} else {
		FUNC5(&buf);
		return NULL;
	}
}