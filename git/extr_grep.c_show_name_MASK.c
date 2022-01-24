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
struct grep_opt {scalar_t__ null_following_name; int /*<<< orphan*/  (* output ) (struct grep_opt*,char*,int) ;int /*<<< orphan*/ * colors; } ;

/* Variables and functions */
 size_t GREP_COLOR_FILENAME ; 
 int /*<<< orphan*/  FUNC0 (struct grep_opt*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct grep_opt*,char*,int) ; 

__attribute__((used)) static void FUNC3(struct grep_opt *opt, const char *name)
{
	FUNC0(opt, name, FUNC1(name), opt->colors[GREP_COLOR_FILENAME]);
	opt->output(opt, opt->null_following_name ? "\0" : "\n", 1);
}