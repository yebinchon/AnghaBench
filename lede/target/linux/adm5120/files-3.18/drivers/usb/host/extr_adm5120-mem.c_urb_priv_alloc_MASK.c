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
struct urb_priv {int td_cnt; int /*<<< orphan*/  pending; int /*<<< orphan*/ ** td; } ;
struct td {int dummy; } ;
struct admhcd {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct urb_priv* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct admhcd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct admhcd*,struct urb_priv*) ; 

__attribute__((used)) static struct urb_priv *FUNC4(struct admhcd *ahcd, int num_tds,
		gfp_t mem_flags)
{
	struct urb_priv	*priv;

	/* allocate the private part of the URB */
	priv = FUNC1(sizeof(*priv) + sizeof(struct td) * num_tds, mem_flags);
	if (!priv)
		goto err;

	/* allocate the TDs (deferring hash chain updates) */
	for (priv->td_cnt = 0; priv->td_cnt < num_tds; priv->td_cnt++) {
		priv->td[priv->td_cnt] = FUNC2(ahcd, mem_flags);
		if (priv->td[priv->td_cnt] == NULL)
			goto err_free;
	}

	FUNC0(&priv->pending);

	return priv;

err_free:
	FUNC3(ahcd, priv);
err:
	return NULL;
}