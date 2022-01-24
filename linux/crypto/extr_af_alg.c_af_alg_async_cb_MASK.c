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
struct kiocb {int /*<<< orphan*/  (* ki_complete ) (struct kiocb*,int,int /*<<< orphan*/ ) ;} ;
struct crypto_async_request {struct af_alg_async_req* data; } ;
struct af_alg_async_req {unsigned int outlen; struct kiocb* iocb; struct sock* sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct af_alg_async_req*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct kiocb*,int,int /*<<< orphan*/ ) ; 

void FUNC3(struct crypto_async_request *_req, int err)
{
	struct af_alg_async_req *areq = _req->data;
	struct sock *sk = areq->sk;
	struct kiocb *iocb = areq->iocb;
	unsigned int resultlen;

	/* Buffer size written by crypto operation. */
	resultlen = areq->outlen;

	FUNC0(areq);
	FUNC1(sk);

	iocb->ki_complete(iocb, err ? err : resultlen, 0);
}