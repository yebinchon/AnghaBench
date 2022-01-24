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
struct grep_opt {int /*<<< orphan*/  (* output ) (struct grep_opt*,void const*,size_t) ;int /*<<< orphan*/  color; } ;

/* Variables and functions */
 char const* GIT_COLOR_RESET ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct grep_opt*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct grep_opt*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct grep_opt*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct grep_opt*,void const*,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct grep_opt *opt, const void *data, size_t size,
			 const char *color)
{
	if (FUNC5(opt->color) && color && color[0]) {
		opt->output(opt, color, FUNC0(color));
		opt->output(opt, data, size);
		opt->output(opt, GIT_COLOR_RESET, FUNC0(GIT_COLOR_RESET));
	} else
		opt->output(opt, data, size);
}