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
struct skcipher_walk {scalar_t__ total; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {scalar_t__ cryptlen; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC1 (struct aead_request*) ; 
 int FUNC2 (struct skcipher_walk*,struct aead_request*,int) ; 

int FUNC3(struct skcipher_walk *walk,
			       struct aead_request *req, bool atomic)
{
	struct crypto_aead *tfm = FUNC1(req);

	walk->total = req->cryptlen - FUNC0(tfm);

	return FUNC2(walk, req, atomic);
}