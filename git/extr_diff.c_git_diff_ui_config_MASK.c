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

/* Variables and functions */
 unsigned int COLOR_MOVED_WS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  default_diff_options ; 
 scalar_t__ diff_algorithm ; 
 void* diff_auto_refresh_index ; 
 int diff_color_moved_default ; 
 unsigned int diff_color_moved_ws_default ; 
 scalar_t__ diff_context_default ; 
 int /*<<< orphan*/  diff_detect_rename_default ; 
 scalar_t__ diff_interhunk_context_default ; 
 void* diff_mnemonic_prefix ; 
 void* diff_no_prefix ; 
 int /*<<< orphan*/  diff_order_file_cfg ; 
 void* diff_stat_graph_width ; 
 int /*<<< orphan*/  diff_use_color_default ; 
 int /*<<< orphan*/  diff_word_regex_cfg ; 
 int /*<<< orphan*/  external_diff_cmd_cfg ; 
 scalar_t__ FUNC1 (char const*,char const*,void*) ; 
 void* FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 
 void* FUNC4 (char const*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC8 (char const*,char const*,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 int FUNC11 (char const*) ; 
 unsigned int FUNC12 (char const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char const*) ; 
 int ws_error_highlight_default ; 

int FUNC17(const char *var, const char *value, void *cb)
{
	if (!FUNC15(var, "diff.color") || !FUNC15(var, "color.diff")) {
		diff_use_color_default = FUNC3(var, value);
		return 0;
	}
	if (!FUNC15(var, "diff.colormoved")) {
		int cm = FUNC11(value);
		if (cm < 0)
			return -1;
		diff_color_moved_default = cm;
		return 0;
	}
	if (!FUNC15(var, "diff.colormovedws")) {
		unsigned cm = FUNC12(value);
		if (cm & COLOR_MOVED_WS_ERROR)
			return -1;
		diff_color_moved_ws_default = cm;
		return 0;
	}
	if (!FUNC15(var, "diff.context")) {
		diff_context_default = FUNC4(var, value);
		if (diff_context_default < 0)
			return -1;
		return 0;
	}
	if (!FUNC15(var, "diff.interhunkcontext")) {
		diff_interhunk_context_default = FUNC4(var, value);
		if (diff_interhunk_context_default < 0)
			return -1;
		return 0;
	}
	if (!FUNC15(var, "diff.renames")) {
		diff_detect_rename_default = FUNC6(var, value);
		return 0;
	}
	if (!FUNC15(var, "diff.autorefreshindex")) {
		diff_auto_refresh_index = FUNC2(var, value);
		return 0;
	}
	if (!FUNC15(var, "diff.mnemonicprefix")) {
		diff_mnemonic_prefix = FUNC2(var, value);
		return 0;
	}
	if (!FUNC15(var, "diff.noprefix")) {
		diff_no_prefix = FUNC2(var, value);
		return 0;
	}
	if (!FUNC15(var, "diff.statgraphwidth")) {
		diff_stat_graph_width = FUNC4(var, value);
		return 0;
	}
	if (!FUNC15(var, "diff.external"))
		return FUNC7(&external_diff_cmd_cfg, var, value);
	if (!FUNC15(var, "diff.wordregex"))
		return FUNC7(&diff_word_regex_cfg, var, value);
	if (!FUNC15(var, "diff.orderfile"))
		return FUNC5(&diff_order_file_cfg, var, value);

	if (!FUNC15(var, "diff.ignoresubmodules"))
		FUNC9(&default_diff_options, value);

	if (!FUNC15(var, "diff.submodule")) {
		if (FUNC13(&default_diff_options, value))
			FUNC16(FUNC0("Unknown value for 'diff.submodule' config variable: '%s'"),
				value);
		return 0;
	}

	if (!FUNC15(var, "diff.algorithm")) {
		diff_algorithm = FUNC10(value);
		if (diff_algorithm < 0)
			return -1;
		return 0;
	}

	if (!FUNC15(var, "diff.wserrorhighlight")) {
		int val = FUNC14(value);
		if (val < 0)
			return -1;
		ws_error_highlight_default = val;
		return 0;
	}

	if (FUNC1(var, value, cb) < 0)
		return -1;

	return FUNC8(var, value, cb);
}