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
struct TYPE_2__ {scalar_t__ y; scalar_t__ x; } ;
struct charlcd_priv {TYPE_1__ addr; } ;
struct charlcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct charlcd*) ; 
 struct charlcd_priv* FUNC1 (struct charlcd*) ; 

__attribute__((used)) static void FUNC2(struct charlcd *lcd)
{
	struct charlcd_priv *priv = FUNC1(lcd);

	priv->addr.x = 0;
	priv->addr.y = 0;
	FUNC0(lcd);
}