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
struct ahash_request_priv {int /*<<< orphan*/  data; int /*<<< orphan*/  complete; int /*<<< orphan*/  flags; int /*<<< orphan*/  result; } ;
struct ahash_request {struct ahash_request_priv* priv; int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahash_request_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ahash_request *req, int err)
{
	struct ahash_request_priv *priv = req->priv;

	if (!err)
		FUNC4(priv->result, req->result,
		       FUNC1(FUNC2(req)));

	/* Restore the original crypto request. */
	req->result = priv->result;

	FUNC0(req, priv->flags,
				   priv->complete, priv->data);
	req->priv = NULL;

	/* Free the req->priv.priv from the ADJUSTED request. */
	FUNC3(priv);
}