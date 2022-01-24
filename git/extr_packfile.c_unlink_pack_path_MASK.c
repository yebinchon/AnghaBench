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
struct strbuf {size_t len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int /*<<< orphan*/  F_OK ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(const char *pack_name, int force_delete)
{
	static const char *exts[] = {".pack", ".idx", ".keep", ".bitmap", ".promisor"};
	int i;
	struct strbuf buf = STRBUF_INIT;
	size_t plen;

	FUNC2(&buf, pack_name);
	FUNC5(buf.buf, &buf.len, ".pack");
	plen = buf.len;

	if (!force_delete) {
		FUNC2(&buf, ".keep");
		if (!FUNC1(buf.buf, F_OK)) {
			FUNC3(&buf);
			return;
		}
	}

	for (i = 0; i < FUNC0(exts); i++) {
		FUNC4(&buf, plen);
		FUNC2(&buf, exts[i]);
		FUNC6(buf.buf);
	}

	FUNC3(&buf);
}