#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/ * buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  buf; } ;
struct TYPE_6__ {scalar_t__ type; int prop_length; int text_length; scalar_t__ action; TYPE_2__ dst; int /*<<< orphan*/  text_delta; int /*<<< orphan*/  prop_delta; TYPE_1__ src; scalar_t__ srcRev; } ;

/* Variables and functions */
 scalar_t__ NODEACT_ADD ; 
 scalar_t__ NODEACT_CHANGE ; 
 scalar_t__ NODEACT_DELETE ; 
 scalar_t__ NODEACT_REPLACE ; 
 scalar_t__ const S_IFDIR ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,char const*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  input ; 
 TYPE_3__ node_ctx ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(void)
{
	const uint32_t type = node_ctx.type;
	const int have_props = node_ctx.prop_length != -1;
	const int have_text = node_ctx.text_length != -1;
	/*
	 * Old text for this node:
	 *  NULL	- directory or bug
	 *  empty_blob	- empty
	 *  "<dataref>"	- data retrievable from fast-import
	 */
	static const char *const empty_blob = "::empty::";
	const char *old_data = NULL;
	uint32_t old_mode = S_IFREG | 0644;

	if (node_ctx.action == NODEACT_DELETE) {
		if (have_text || have_props || node_ctx.srcRev)
			FUNC1("invalid dump: deletion node has "
				"copyfrom info, text, or properties");
		FUNC5(node_ctx.dst.buf);
		return;
	}
	if (node_ctx.action == NODEACT_REPLACE) {
		FUNC5(node_ctx.dst.buf);
		node_ctx.action = NODEACT_ADD;
	}
	if (node_ctx.srcRev) {
		FUNC3(node_ctx.srcRev, node_ctx.src.buf, node_ctx.dst.buf);
		if (node_ctx.action == NODEACT_ADD)
			node_ctx.action = NODEACT_CHANGE;
	}
	if (have_text && type == S_IFDIR)
		FUNC1("invalid dump: directories cannot have text attached");

	/*
	 * Find old content (old_data) and decide on the new mode.
	 */
	if (node_ctx.action == NODEACT_CHANGE && !*node_ctx.dst.buf) {
		if (type != S_IFDIR)
			FUNC1("invalid dump: root of tree is not a regular file");
		old_data = NULL;
	} else if (node_ctx.action == NODEACT_CHANGE) {
		uint32_t mode;
		old_data = FUNC7(node_ctx.dst.buf, &mode);
		if (mode == S_IFDIR && type != S_IFDIR)
			FUNC1("invalid dump: cannot modify a directory into a file");
		if (mode != S_IFDIR && type == S_IFDIR)
			FUNC1("invalid dump: cannot modify a file into a directory");
		node_ctx.type = mode;
		old_mode = mode;
	} else if (node_ctx.action == NODEACT_ADD) {
		if (type == S_IFDIR)
			old_data = NULL;
		else if (have_text)
			old_data = empty_blob;
		else
			FUNC1("invalid dump: adds node without text");
	} else {
		FUNC1("invalid dump: Node-path block lacks Node-action");
	}

	/*
	 * Adjust mode to reflect properties.
	 */
	if (have_props) {
		if (!node_ctx.prop_delta)
			node_ctx.type = type;
		if (node_ctx.prop_length)
			FUNC8();
	}

	/*
	 * Save the result.
	 */
	if (type == S_IFDIR)	/* directories are not tracked. */
		return;
	FUNC0(old_data);
	if (old_data == empty_blob)
		/* For the fast_export_* functions, NULL means empty. */
		old_data = NULL;
	if (!have_text) {
		FUNC6(node_ctx.dst.buf, node_ctx.type, old_data);
		return;
	}
	if (!node_ctx.text_delta) {
		FUNC6(node_ctx.dst.buf, node_ctx.type, "inline");
		FUNC4(node_ctx.type, node_ctx.text_length, &input);
		return;
	}
	FUNC6(node_ctx.dst.buf, node_ctx.type, "inline");
	FUNC2(node_ctx.type, old_mode, old_data,
				node_ctx.text_length, &input);
}