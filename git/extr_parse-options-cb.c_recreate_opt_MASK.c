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
struct strbuf {int dummy; } ;
struct option {char const* long_name; char short_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

__attribute__((used)) static int FUNC3(struct strbuf *sb, const struct option *opt,
		const char *arg, int unset)
{
	FUNC2(sb);

	if (opt->long_name) {
		FUNC1(sb, unset ? "--no-" : "--");
		FUNC1(sb, opt->long_name);
		if (arg) {
			FUNC0(sb, '=');
			FUNC1(sb, arg);
		}
	} else if (opt->short_name && !unset) {
		FUNC0(sb, '-');
		FUNC0(sb, opt->short_name);
		if (arg)
			FUNC1(sb, arg);
	} else
		return -1;

	return 0;
}