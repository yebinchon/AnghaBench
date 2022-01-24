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
struct TYPE_3__ {int /*<<< orphan*/  comboboxText; } ;
typedef  TYPE_1__ uiEditableCombobox ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 

char *FUNC3(uiEditableCombobox *c)
{
	char *s;
	char *out;

	s = FUNC1(c->comboboxText);
	// s will always be non-NULL in the case of a combobox with an entry (according to the source code)
	out = FUNC2(s);
	FUNC0(s);
	return out;
}