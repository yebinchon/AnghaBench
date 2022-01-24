#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct index_state {int cache_nr; TYPE_1__** cache; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct index_state *istate, const char *path,
		      int check_working_copy, int empty_ok)
{
	int pos;
	struct strbuf dirpath = STRBUF_INIT;
	struct stat st;

	FUNC6(&dirpath, path);
	FUNC5(&dirpath, '/');

	pos = FUNC2(istate, dirpath.buf, dirpath.len);

	if (pos < 0)
		pos = -1 - pos;
	if (pos < istate->cache_nr &&
	    !FUNC9(dirpath.buf, istate->cache[pos]->name, dirpath.len)) {
		FUNC7(&dirpath);
		return 1;
	}

	FUNC7(&dirpath);
	return check_working_copy && !FUNC4(path, &st) && FUNC0(st.st_mode) &&
		!(empty_ok && FUNC3(path)) &&
		!FUNC1(path, FUNC8(path));
}