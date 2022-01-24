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
struct TYPE_3__ {int /*<<< orphan*/  onChangedSignal; int /*<<< orphan*/  combobox; int /*<<< orphan*/  bin; } ;
typedef  TYPE_1__ uiEditableCombobox ;
typedef  int /*<<< orphan*/  GtkEntry ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 

void FUNC5(uiEditableCombobox *c, const char *text)
{
	GtkEntry *e;

	// we need to inhibit sending of ::changed because this WILL send a ::changed otherwise
	FUNC1(c->combobox, c->onChangedSignal);
	// since there isn't a gtk_combo_box_text_set_active_text()...
	e = FUNC0(FUNC3(c->bin));
	FUNC4(e, text);
	FUNC2(c->combobox, c->onChangedSignal);
}