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
struct charlcd_priv {int /*<<< orphan*/  bl_tempo_lock; int /*<<< orphan*/  bl_tempo; } ;
struct charlcd {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* backlight ) (struct charlcd*,int) ;} ;

/* Variables and functions */
 struct charlcd_priv* FUNC0 (struct charlcd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct charlcd*,int) ; 

__attribute__((used)) static void FUNC4(struct charlcd *lcd, int on)
{
	struct charlcd_priv *priv = FUNC0(lcd);

	if (!lcd->ops->backlight)
		return;

	FUNC1(&priv->bl_tempo_lock);
	if (!priv->bl_tempo)
		lcd->ops->backlight(lcd, on);
	FUNC2(&priv->bl_tempo_lock);
}