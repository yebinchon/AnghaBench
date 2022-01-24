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
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,size_t,void const*,size_t,void const*,size_t,int*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void const*,size_t,void const*,size_t,void const*,size_t,int*,int*,size_t) ; 
 scalar_t__ FUNC5 (int*,void const*,size_t) ; 

__attribute__((used)) static void FUNC6(const void *key, size_t nkey,
                      const void *plain, size_t nplain,
                      const void *aad, size_t naad,
                      const void *iv, size_t niv,
                      const void *cipher_expect, size_t ncipher,
                      const void *tag_expect, size_t ntag)
{
  uint8_t plain_decrypt[64],
          cipher[64],
          tag[16];

  FUNC1(ncipher == nplain);

  cf_aes_context ctx;
  FUNC2(&ctx, key, nkey);

  FUNC4(&cf_aes, &ctx,
                 plain, nplain,
                 aad, naad,
                 iv, niv,
                 cipher,
                 tag, ntag);

  FUNC0(FUNC5(tag, tag_expect, ntag) == 0);
  FUNC0(FUNC5(cipher, cipher_expect, ncipher) == 0);

  int err = FUNC3(&cf_aes, &ctx,
                           cipher, ncipher,
                           aad, naad,
                           iv, niv,
                           tag, ntag,
                           plain_decrypt);
  FUNC0(err == 0);
  FUNC0(FUNC5(plain_decrypt, plain, ncipher) == 0);

  tag[0] ^= 0xff;
  err = FUNC3(&cf_aes, &ctx,
                       cipher, ncipher,
                       aad, naad,
                       iv, niv,
                       tag, ntag,
                       plain_decrypt);
  FUNC0(err == 1);
}