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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  cf_aes_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  cf_aes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void const*,size_t,int,void const*,size_t,void const*,size_t,int*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void const*,size_t,int,void const*,size_t,void const*,size_t,int*,int*,size_t) ; 
 scalar_t__ FUNC5 (int*,void const*,size_t) ; 

__attribute__((used)) static void FUNC6(const void *key, size_t nkey,
                      const void *header, size_t nheader,
                      const void *plain, size_t nplain,
                      const void *nonce, size_t nnonce,
                      const void *expect_cipher, size_t ncipher,
                      const void *expect_tag, size_t ntag)
{
  uint8_t cipher[32], tag[16], decrypted[32];

  FUNC1(ncipher == nplain);

  cf_aes_context ctx;
  FUNC2(&ctx, key, nkey);

  FUNC4(&cf_aes, &ctx,
                 plain, nplain, 15 - nnonce,
                 header, nheader,
                 nonce, nnonce,
                 cipher,
                 tag, ntag);

  FUNC0(FUNC5(tag, expect_tag, ntag) == 0);
  FUNC0(FUNC5(cipher, expect_cipher, ncipher) == 0);

  int err;
  err = FUNC3(&cf_aes, &ctx,
                       expect_cipher, ncipher, 15 - nnonce,
                       header, nheader,
                       nonce, nnonce,
                       tag, ntag,
                       decrypted);
  FUNC0(err == 0);
  FUNC0(FUNC5(decrypted, plain, nplain) == 0);

  tag[0] ^= 0xff;
  
  err = FUNC3(&cf_aes, &ctx,
                       expect_cipher, ncipher, 15 - nnonce,
                       header, nheader,
                       nonce, nnonce,
                       tag, ntag,
                       decrypted);
  FUNC0(err == 1);
}