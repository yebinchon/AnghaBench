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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u8 ;
struct crypto_aes_ctx {int dummy; } ;
typedef  int /*<<< orphan*/  ctx ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto_aes_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct crypto_aes_ctx*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct crypto_aes_ctx*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(__le32 *hash_start, const u8 *key,
					     unsigned int keylen)
{
	struct crypto_aes_ctx ctx;
	uint8_t src[16] = { 0 };
	int rc;

	rc = FUNC1(&ctx, key, keylen);
	if (rc) {
		FUNC4("aes_expandkey() failed: %d\n", rc);
		return rc;
	}

	FUNC0(&ctx, src, src);
	FUNC2(hash_start, src, 16);
	FUNC3(&ctx, sizeof(ctx));
	return 0;
}