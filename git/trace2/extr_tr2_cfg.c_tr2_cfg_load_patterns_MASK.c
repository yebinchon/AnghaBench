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
struct strbuf {int len; char* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  TR2_SYSENV_CFG_PARAM ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int) ; 
 struct strbuf** FUNC1 (char const*,int /*<<< orphan*/ ,char,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int tr2_cfg_count_patterns ; 
 int tr2_cfg_loaded ; 
 struct strbuf** tr2_cfg_patterns ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void)
{
	struct strbuf **s;
	const char *envvar;

	if (tr2_cfg_loaded)
		return tr2_cfg_count_patterns;
	tr2_cfg_loaded = 1;

	envvar = FUNC5(TR2_SYSENV_CFG_PARAM);
	if (!envvar || !*envvar)
		return tr2_cfg_count_patterns;

	tr2_cfg_patterns = FUNC1(envvar, FUNC4(envvar), ',', -1);
	for (s = tr2_cfg_patterns; *s; s++) {
		struct strbuf *buf = *s;

		if (buf->len && buf->buf[buf->len - 1] == ',')
			FUNC0(buf, buf->len - 1);
		FUNC3(*s);
		FUNC2(*s);
	}

	tr2_cfg_count_patterns = s - tr2_cfg_patterns;
	return tr2_cfg_count_patterns;
}