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
struct repository {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct repository*,int /*<<< orphan*/ ,char,char const*,int) ; 
 scalar_t__ FUNC2 (struct strbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char const*) ; 

__attribute__((used)) static void FUNC6(struct repository *r,
				 const char *relative_base,
				 int depth)
{
	char *path;
	struct strbuf buf = STRBUF_INIT;

	path = FUNC5("%s/info/alternates", relative_base);
	if (FUNC2(&buf, path, 1024) < 0) {
		FUNC4(path);
		FUNC0(path);
		return;
	}

	FUNC1(r, buf.buf, '\n', relative_base, depth);
	FUNC3(&buf);
	FUNC0(path);
}