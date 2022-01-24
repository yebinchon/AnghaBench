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
typedef  int /*<<< orphan*/  field_t ;

/* Variables and functions */
 int CON_HISTORY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int hist_count ; 
 int hist_current ; 
 int /*<<< orphan*/ * ttyEditLines ; 

field_t *FUNC1( void )
{
	FUNC0(hist_count <= CON_HISTORY);
	FUNC0(hist_count >= 0);
	FUNC0(hist_current >= -1);
	FUNC0(hist_current <= hist_count);
	if (hist_current >= 0)
	{
		hist_current--;
	}
	if (hist_current == -1)
	{
		return NULL;
	}
	return &(ttyEditLines[hist_current]);
}