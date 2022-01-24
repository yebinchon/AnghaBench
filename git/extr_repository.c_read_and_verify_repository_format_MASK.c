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
struct repository_format {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct repository_format*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 scalar_t__ FUNC4 (struct repository_format*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct repository_format *format,
					     const char *commondir)
{
	int ret = 0;
	struct strbuf sb = STRBUF_INIT;

	FUNC1(&sb, "%s/config", commondir);
	FUNC0(format, sb.buf);
	FUNC3(&sb);

	if (FUNC4(format, &sb) < 0) {
		FUNC5("%s", sb.buf);
		ret = -1;
	}

	FUNC2(&sb);
	return ret;
}