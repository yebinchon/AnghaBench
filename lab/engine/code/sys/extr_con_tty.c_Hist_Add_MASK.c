#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  cursor; } ;
typedef  TYPE_1__ field_t ;

/* Variables and functions */
 int CON_HISTORY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int hist_count ; 
 int hist_current ; 
 TYPE_1__* ttyEditLines ; 

void FUNC1(field_t *field)
{
	int i;

	// Don't save blank lines in history.
	if (!field->cursor)
		return;

	FUNC0(hist_count <= CON_HISTORY);
	FUNC0(hist_count >= 0);
	FUNC0(hist_current >= -1);
	FUNC0(hist_current <= hist_count);
	// make some room
	for (i=CON_HISTORY-1; i>0; i--)
	{
		ttyEditLines[i] = ttyEditLines[i-1];
	}
	ttyEditLines[0] = *field;
	if (hist_count<CON_HISTORY)
	{
		hist_count++;
	}
	hist_current = -1; // re-init
}