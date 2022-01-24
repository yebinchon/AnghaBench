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
typedef  int /*<<< orphan*/  xdemitconf_t ;
struct TYPE_3__ {int rm_so; int rm_eo; } ;
typedef  TYPE_1__ regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int REG_NOMATCH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC4(xdemitconf_t *xecfg, const char *start,
						 regex_t *regexp)
{
	int reg_error;
	regmatch_t match[1];
	while (1) {
		const char *bol, *eol;
		reg_error = FUNC3(regexp, start, 1, match, 0);
		if (reg_error == REG_NOMATCH)
			return NULL;
		else if (reg_error) {
			char errbuf[1024];
			FUNC2(reg_error, regexp, errbuf, 1024);
			FUNC0("-L parameter: regexec() failed: %s", errbuf);
		}
		/* determine extent of line matched */
		bol = start+match[0].rm_so;
		eol = start+match[0].rm_eo;
		while (bol > start && *bol != '\n')
			bol--;
		if (*bol == '\n')
			bol++;
		while (*eol && *eol != '\n')
			eol++;
		if (*eol == '\n')
			eol++;
		/* is it a funcname line? */
		if (FUNC1(xecfg, (char*) bol, (char*) eol))
			return bol;
		start = eol;
	}
}