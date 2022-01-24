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
struct strbuf {int len; int /*<<< orphan*/  buf; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
struct cmdnames {int dummy; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct cmdnames*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 struct dirent* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*,size_t*) ; 
 size_t FUNC11 (char const*) ; 

__attribute__((used)) static void FUNC12(struct cmdnames *cmds,
					 const char *path,
					 const char *prefix)
{
	DIR *dir = FUNC3(path);
	struct dirent *de;
	struct strbuf buf = STRBUF_INIT;
	int len;

	if (!dir)
		return;
	if (!prefix)
		prefix = "git-";

	FUNC6(&buf, "%s/", path);
	len = buf.len;

	while ((de = FUNC4(dir)) != NULL) {
		const char *ent;
		size_t entlen;

		if (!FUNC5(de->d_name, prefix, &ent))
			continue;

		FUNC9(&buf, len);
		FUNC7(&buf, de->d_name);
		if (!FUNC2(buf.buf))
			continue;

		entlen = FUNC11(ent);
		FUNC10(ent, ".exe", &entlen);

		FUNC0(cmds, ent, entlen);
	}
	FUNC1(dir);
	FUNC8(&buf);
}