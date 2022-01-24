#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {char* buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  color; int /*<<< orphan*/  keyword; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int GIT_COLOR_AUTO ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,char**) ; 
 TYPE_1__* keywords ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 

__attribute__((used)) static int FUNC7(void)
{
	static int use_sideband_colors_cached = -1;

	const char *key = "color.remote";
	struct strbuf sb = STRBUF_INIT;
	char *value;
	int i;

	if (use_sideband_colors_cached >= 0)
		return use_sideband_colors_cached;

	if (!FUNC3(key, &value)) {
		use_sideband_colors_cached = FUNC2(key, value);
	} else if (!FUNC3("color.ui", &value)) {
		use_sideband_colors_cached = FUNC2("color.ui", value);
	} else {
		use_sideband_colors_cached = GIT_COLOR_AUTO;
	}

	for (i = 0; i < FUNC0(keywords); i++) {
		FUNC6(&sb);
		FUNC4(&sb, "%s.%s", key, keywords[i].keyword);
		if (FUNC3(sb.buf, &value))
			continue;
		if (FUNC1(value, keywords[i].color))
			continue;
	}
	FUNC5(&sb);
	return use_sideband_colors_cached;
}