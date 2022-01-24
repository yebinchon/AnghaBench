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
struct emit_callback {int ws_rule; scalar_t__ blank_at_eof_in_preimage; scalar_t__ blank_at_eof_in_postimage; scalar_t__ lno_in_preimage; scalar_t__ lno_in_postimage; } ;

/* Variables and functions */
 int WS_BLANK_AT_EOF ; 
 int FUNC0 (char const*,int,int) ; 

__attribute__((used)) static int FUNC1(struct emit_callback *ecbdata, const char *line, int len)
{
	if (!((ecbdata->ws_rule & WS_BLANK_AT_EOF) &&
	      ecbdata->blank_at_eof_in_preimage &&
	      ecbdata->blank_at_eof_in_postimage &&
	      ecbdata->blank_at_eof_in_preimage <= ecbdata->lno_in_preimage &&
	      ecbdata->blank_at_eof_in_postimage <= ecbdata->lno_in_postimage))
		return 0;
	return FUNC0(line, len, ecbdata->ws_rule);
}