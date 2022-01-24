#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* ops; } ;
struct charlcd_priv {TYPE_3__ lcd; int /*<<< orphan*/  bl_work; } ;
struct charlcd {TYPE_1__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* backlight ) (TYPE_3__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {scalar_t__ backlight; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  charlcd_dev ; 
 int /*<<< orphan*/  FUNC1 (struct charlcd*,char*) ; 
 struct charlcd_priv* FUNC2 (struct charlcd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  panel_notifier ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * the_charlcd ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct charlcd *lcd)
{
	struct charlcd_priv *priv = FUNC2(lcd);

	FUNC5(&panel_notifier);
	FUNC1(lcd, "\x0cLCD driver unloaded.\x1b[Lc\x1b[Lb\x1b[L-");
	FUNC3(&charlcd_dev);
	the_charlcd = NULL;
	if (lcd->ops->backlight) {
		FUNC0(&priv->bl_work);
		priv->lcd.ops->backlight(&priv->lcd, 0);
	}

	return 0;
}