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
struct skcipher_request {int dummy; } ;
struct crypto_skcipher {int dummy; } ;
struct crypto_cipher {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cia_encrypt; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct crypto_cipher*) ; 
 int FUNC1 (struct skcipher_request*,struct crypto_cipher*,int /*<<< orphan*/ ) ; 
 struct crypto_skcipher* FUNC2 (struct skcipher_request*) ; 
 struct crypto_cipher* FUNC3 (struct crypto_skcipher*) ; 

__attribute__((used)) static int FUNC4(struct skcipher_request *req)
{
	struct crypto_skcipher *tfm = FUNC2(req);
	struct crypto_cipher *cipher = FUNC3(tfm);

	return FUNC1(req, cipher,
				FUNC0(cipher)->cia_encrypt);
}