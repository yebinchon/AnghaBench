#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct emit_callback {unsigned int ws_rule; int blank_at_eof_in_preimage; int blank_at_eof_in_postimage; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ mmfile_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,unsigned int) ; 

__attribute__((used)) static void FUNC2(mmfile_t *mf1, mmfile_t *mf2,
			       struct emit_callback *ecbdata)
{
	int l1, l2, at;
	unsigned ws_rule = ecbdata->ws_rule;
	l1 = FUNC1(mf1, ws_rule);
	l2 = FUNC1(mf2, ws_rule);
	if (l2 <= l1) {
		ecbdata->blank_at_eof_in_preimage = 0;
		ecbdata->blank_at_eof_in_postimage = 0;
		return;
	}
	at = FUNC0(mf1->ptr, mf1->size);
	ecbdata->blank_at_eof_in_preimage = (at - l1) + 1;

	at = FUNC0(mf2->ptr, mf2->size);
	ecbdata->blank_at_eof_in_postimage = (at - l2) + 1;
}