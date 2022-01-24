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
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  s; int /*<<< orphan*/ * graphemes; int /*<<< orphan*/  u16len; int /*<<< orphan*/  u16; } ;
typedef  TYPE_1__ uiAttributedString ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(uiAttributedString *s)
{
	if (s->graphemes != NULL)
		return;
	if (FUNC0()) {
		s->graphemes = FUNC1(s->u16, s->u16len);
		return;
	}
	s->graphemes = FUNC1(s->s, s->len);
}