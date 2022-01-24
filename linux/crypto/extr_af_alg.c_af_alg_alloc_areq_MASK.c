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
struct sock {int dummy; } ;
struct af_alg_async_req {unsigned int areqlen; scalar_t__ tsgl_entries; int /*<<< orphan*/ * tsgl; int /*<<< orphan*/  rsgl_list; int /*<<< orphan*/ * last_rsgl; struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct af_alg_async_req* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct af_alg_async_req* FUNC2 (struct sock*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

struct af_alg_async_req *FUNC4(struct sock *sk,
					   unsigned int areqlen)
{
	struct af_alg_async_req *areq = FUNC2(sk, areqlen, GFP_KERNEL);

	if (FUNC3(!areq))
		return FUNC0(-ENOMEM);

	areq->areqlen = areqlen;
	areq->sk = sk;
	areq->last_rsgl = NULL;
	FUNC1(&areq->rsgl_list);
	areq->tsgl = NULL;
	areq->tsgl_entries = 0;

	return areq;
}