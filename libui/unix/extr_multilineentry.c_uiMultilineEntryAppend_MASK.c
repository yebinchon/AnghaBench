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
struct TYPE_3__ {int /*<<< orphan*/  onChangedSignal; int /*<<< orphan*/  textbuf; } ;
typedef  TYPE_1__ uiMultilineEntry ;
typedef  int /*<<< orphan*/  GtkTextIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,int) ; 

void FUNC4(uiMultilineEntry *e, const char *text)
{
	GtkTextIter end;

	FUNC2(e->textbuf, &end);
	// we need to inhibit sending of ::changed because this WILL send a ::changed otherwise
	FUNC0(e->textbuf, e->onChangedSignal);
	FUNC3(e->textbuf, &end, text, -1);
	FUNC1(e->textbuf, e->onChangedSignal);
}