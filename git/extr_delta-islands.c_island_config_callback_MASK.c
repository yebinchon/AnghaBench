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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_EXTENDED ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  core_island_name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/ * island_regexes ; 
 int /*<<< orphan*/  island_regexes_alloc ; 
 int island_regexes_nr ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 

__attribute__((used)) static int FUNC10(const char *k, const char *v, void *cb)
{
	if (!FUNC9(k, "pack.island")) {
		struct strbuf re = STRBUF_INIT;

		if (!v)
			return FUNC2(k);

		FUNC0(island_regexes, island_regexes_nr + 1, island_regexes_alloc);

		if (*v != '^')
			FUNC6(&re, '^');
		FUNC7(&re, v);

		if (FUNC5(&island_regexes[island_regexes_nr], re.buf, REG_EXTENDED))
			FUNC3(FUNC1("failed to load island regex for '%s': %s"), k, re.buf);

		FUNC8(&re);
		island_regexes_nr++;
		return 0;
	}

	if (!FUNC9(k, "pack.islandcore"))
		return FUNC4(&core_island_name, k, v);

	return 0;
}