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
struct emit_callback {unsigned int ws_rule; int /*<<< orphan*/  opt; } ;

/* Variables and functions */
 unsigned int DIFF_SYMBOL_CONTENT_BLANK_LINE_EOF ; 
 int /*<<< orphan*/  DIFF_SYMBOL_PLUS ; 
 unsigned int WSEH_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,unsigned int) ; 
 scalar_t__ FUNC1 (struct emit_callback*,char const*,int) ; 

__attribute__((used)) static void FUNC2(struct emit_callback *ecbdata,
			  const char *line, int len)
{
	unsigned flags = WSEH_NEW | ecbdata->ws_rule;
	if (FUNC1(ecbdata, line, len))
		flags |= DIFF_SYMBOL_CONTENT_BLANK_LINE_EOF;

	FUNC0(ecbdata->opt, DIFF_SYMBOL_PLUS, line, len, flags);
}