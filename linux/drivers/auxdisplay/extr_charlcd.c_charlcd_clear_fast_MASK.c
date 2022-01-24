#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct charlcd {int hwidth; TYPE_1__* ops; int /*<<< orphan*/  height; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write_data ) (struct charlcd*,char) ;int /*<<< orphan*/  (* clear_fast ) (struct charlcd*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct charlcd*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct charlcd*) ; 
 int /*<<< orphan*/  FUNC3 (struct charlcd*,char) ; 

__attribute__((used)) static void FUNC4(struct charlcd *lcd)
{
	int pos;

	FUNC0(lcd);

	if (lcd->ops->clear_fast)
		lcd->ops->clear_fast(lcd);
	else
		for (pos = 0; pos < FUNC1(2, lcd->height) * lcd->hwidth; pos++)
			lcd->ops->write_data(lcd, ' ');

	FUNC0(lcd);
}