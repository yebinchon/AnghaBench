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
struct index_state {int /*<<< orphan*/  untracked; int /*<<< orphan*/  resolve_undo; int /*<<< orphan*/  cache_tree; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
#define  CACHE_EXT_ENDOFINDEXENTRIES 134 
#define  CACHE_EXT_FSMONITOR 133 
#define  CACHE_EXT_INDEXENTRYOFFSETTABLE 132 
#define  CACHE_EXT_LINK 131 
#define  CACHE_EXT_RESOLVE_UNDO 130 
#define  CACHE_EXT_TREE 129 
#define  CACHE_EXT_UNTRACKED 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct index_state*,char const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct index_state*,char const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (char const*,unsigned long) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC9(struct index_state *istate,
				const char *ext, const char *data, unsigned long sz)
{
	switch (FUNC0(ext)) {
	case CACHE_EXT_TREE:
		istate->cache_tree = FUNC2(data, sz);
		break;
	case CACHE_EXT_RESOLVE_UNDO:
		istate->resolve_undo = FUNC8(data, sz);
		break;
	case CACHE_EXT_LINK:
		if (FUNC6(istate, data, sz))
			return -1;
		break;
	case CACHE_EXT_UNTRACKED:
		istate->untracked = FUNC7(data, sz);
		break;
	case CACHE_EXT_FSMONITOR:
		FUNC5(istate, data, sz);
		break;
	case CACHE_EXT_ENDOFINDEXENTRIES:
	case CACHE_EXT_INDEXENTRYOFFSETTABLE:
		/* already handled in do_read_index() */
		break;
	default:
		if (*ext < 'A' || 'Z' < *ext)
			return FUNC3(FUNC1("index uses %.4s extension, which we do not understand"),
				     ext);
		FUNC4(stderr, FUNC1("ignoring %.4s extension"), ext);
		break;
	}
	return 0;
}