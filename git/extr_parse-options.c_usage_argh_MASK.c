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
struct option {int flags; char* argh; scalar_t__ long_name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PARSE_OPT_LITERAL_ARGHELP ; 
 int PARSE_OPT_OPTARG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const struct option *opts, FILE *outfile)
{
	const char *s;
	int literal = (opts->flags & PARSE_OPT_LITERAL_ARGHELP) ||
		!opts->argh || !!FUNC1(opts->argh, "()<>[]|");
	if (opts->flags & PARSE_OPT_OPTARG)
		if (opts->long_name)
			s = literal ? "[=%s]" : "[=<%s>]";
		else
			s = literal ? "[%s]" : "[<%s>]";
	else
		s = literal ? " %s" : " <%s>";
	return FUNC2(outfile, s, opts->argh ? FUNC0(opts->argh) : FUNC0("..."));
}