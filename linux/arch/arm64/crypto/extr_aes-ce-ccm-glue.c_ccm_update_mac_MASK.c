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
typedef  size_t u32 ;
struct crypto_aes_ctx {int /*<<< orphan*/  key_enc; } ;

/* Variables and functions */
 size_t AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_aes_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_aes_ctx*) ; 

__attribute__((used)) static void FUNC8(struct crypto_aes_ctx *key, u8 mac[], u8 const in[],
			   u32 abytes, u32 *macp)
{
	if (FUNC2()) {
		FUNC4();
		FUNC1(mac, in, abytes, macp, key->key_enc,
				     FUNC7(key));
		FUNC5();
	} else {
		if (*macp > 0 && *macp < AES_BLOCK_SIZE) {
			int added = FUNC6(abytes, AES_BLOCK_SIZE - *macp);

			FUNC3(&mac[*macp], in, added);

			*macp += added;
			in += added;
			abytes -= added;
		}

		while (abytes >= AES_BLOCK_SIZE) {
			FUNC0(key, mac, mac);
			FUNC3(mac, in, AES_BLOCK_SIZE);

			in += AES_BLOCK_SIZE;
			abytes -= AES_BLOCK_SIZE;
		}

		if (abytes > 0) {
			FUNC0(key, mac, mac);
			FUNC3(mac, in, abytes);
			*macp = abytes;
		}
	}
}