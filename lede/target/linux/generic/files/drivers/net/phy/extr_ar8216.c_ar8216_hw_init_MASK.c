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
struct ar8xxx_priv {int initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ar8xxx_priv*) ; 

__attribute__((used)) static int
FUNC1(struct ar8xxx_priv *priv)
{
	if (priv->initialized)
		return 0;

	FUNC0(priv);

	priv->initialized = true;
	return 0;
}