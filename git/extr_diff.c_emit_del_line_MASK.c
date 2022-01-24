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
 int /*<<< orphan*/  DIFF_SYMBOL_MINUS ; 
 unsigned int WSEH_OLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,unsigned int) ; 

__attribute__((used)) static void FUNC1(struct emit_callback *ecbdata,
			  const char *line, int len)
{
	unsigned flags = WSEH_OLD | ecbdata->ws_rule;
	FUNC0(ecbdata->opt, DIFF_SYMBOL_MINUS, line, len, flags);
}