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
struct emit_callback {void* lno_in_postimage; void* lno_in_preimage; } ;

/* Variables and functions */
 char* FUNC0 (char const*,char) ; 
 void* FUNC1 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(const char *line, struct emit_callback *ecbdata)
{
	const char *p;
	ecbdata->lno_in_preimage = 0;
	ecbdata->lno_in_postimage = 0;
	p = FUNC0(line, '-');
	if (!p)
		return; /* cannot happen */
	ecbdata->lno_in_preimage = FUNC1(p + 1, NULL, 10);
	p = FUNC0(p, '+');
	if (!p)
		return; /* cannot happen */
	ecbdata->lno_in_postimage = FUNC1(p + 1, NULL, 10);
}