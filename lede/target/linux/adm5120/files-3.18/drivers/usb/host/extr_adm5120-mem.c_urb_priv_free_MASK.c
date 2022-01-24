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
struct urb_priv {int td_cnt; int /*<<< orphan*/  pending; scalar_t__* td; } ;
struct admhcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct urb_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct admhcd*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct admhcd *ahcd, struct urb_priv *urb_priv)
{
	int i;

	for (i = 0; i < urb_priv->td_cnt; i++)
		if (urb_priv->td[i])
			FUNC2(ahcd, urb_priv->td[i]);

	FUNC1(&urb_priv->pending);
	FUNC0(urb_priv);
}