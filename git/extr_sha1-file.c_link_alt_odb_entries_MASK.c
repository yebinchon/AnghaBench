#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  buf; int /*<<< orphan*/  len; } ;
struct repository {TYPE_2__* objects; } ;
struct TYPE_4__ {TYPE_1__* odb; } ;
struct TYPE_3__ {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct repository*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,int,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 

__attribute__((used)) static void FUNC8(struct repository *r, const char *alt,
				 int sep, const char *relative_base, int depth)
{
	struct strbuf objdirbuf = STRBUF_INIT;
	struct strbuf entry = STRBUF_INIT;

	if (!alt || !*alt)
		return;

	if (depth > 5) {
		FUNC2(FUNC0("%s: ignoring alternate object stores, nesting too deep"),
				relative_base);
		return;
	}

	FUNC5(&objdirbuf, r->objects->odb->path);
	if (FUNC6(&objdirbuf) < 0)
		FUNC1(FUNC0("unable to normalize object directory: %s"),
		    objdirbuf.buf);

	while (*alt) {
		alt = FUNC4(alt, sep, &entry);
		if (!entry.len)
			continue;
		FUNC3(r, entry.buf,
				   relative_base, depth, objdirbuf.buf);
	}
	FUNC7(&entry);
	FUNC7(&objdirbuf);
}