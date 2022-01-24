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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct scatter_walk {int /*<<< orphan*/  sg; } ;
struct crypto_aes_ctx {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int assoclen; int /*<<< orphan*/  src; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  void* __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_aes_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*) ; 
 void* FUNC1 (int) ; 
 struct crypto_aes_ctx* FUNC2 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC3 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct scatter_walk*,int) ; 
 int FUNC6 (struct scatter_walk*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scatter_walk*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC8 (struct scatter_walk*) ; 
 int /*<<< orphan*/  FUNC9 (struct scatter_walk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct aead_request *req, u8 mac[])
{
	struct crypto_aead *aead = FUNC3(req);
	struct crypto_aes_ctx *ctx = FUNC2(aead);
	struct __packed { __be16 l; __be32 h; u16 len; } ltag;
	struct scatter_walk walk;
	u32 len = req->assoclen;
	u32 macp = 0;

	/* prepend the AAD with a length tag */
	if (len < 0xff00) {
		ltag.l = FUNC1(len);
		ltag.len = 2;
	} else  {
		ltag.l = FUNC1(0xfffe);
		FUNC4(len, &ltag.h);
		ltag.len = 6;
	}

	FUNC0(ctx, mac, (u8 *)&ltag, ltag.len, &macp);
	FUNC9(&walk, req->src);

	do {
		u32 n = FUNC6(&walk, len);
		u8 *p;

		if (!n) {
			FUNC9(&walk, FUNC11(walk.sg));
			n = FUNC6(&walk, len);
		}
		p = FUNC8(&walk);
		FUNC0(ctx, mac, p, n, &macp);
		len -= n;

		FUNC10(p);
		FUNC5(&walk, n);
		FUNC7(&walk, 0, len);
	} while (len);
}