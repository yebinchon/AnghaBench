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
struct crypto_aead {int dummy; } ;
struct aead_request {int /*<<< orphan*/  iv; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 struct aead_request* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct aead_request *req, int err)
{
	struct aead_request *subreq = FUNC0(req);
	struct crypto_aead *geniv;

	if (err == -EINPROGRESS)
		return;

	if (err)
		goto out;

	geniv = FUNC2(req);
	FUNC4(req->iv, subreq->iv, FUNC1(geniv));

out:
	FUNC3(subreq->iv);
}