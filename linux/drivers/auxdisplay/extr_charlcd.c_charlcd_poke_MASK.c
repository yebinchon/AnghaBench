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
struct charlcd_priv {int bl_tempo; int flags; int /*<<< orphan*/  bl_tempo_lock; int /*<<< orphan*/  bl_work; } ;
struct charlcd {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* backlight ) (struct charlcd*,int) ;} ;

/* Variables and functions */
 int HZ ; 
 int LCD_BL_TEMPO_PERIOD ; 
 int LCD_FLAG_L ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct charlcd_priv* FUNC1 (struct charlcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct charlcd*,int) ; 

void FUNC6(struct charlcd *lcd)
{
	struct charlcd_priv *priv = FUNC1(lcd);

	if (!lcd->ops->backlight)
		return;

	FUNC0(&priv->bl_work);

	FUNC2(&priv->bl_tempo_lock);
	if (!priv->bl_tempo && !(priv->flags & LCD_FLAG_L))
		lcd->ops->backlight(lcd, 1);
	priv->bl_tempo = true;
	FUNC4(&priv->bl_work, LCD_BL_TEMPO_PERIOD * HZ);
	FUNC3(&priv->bl_tempo_lock);
}