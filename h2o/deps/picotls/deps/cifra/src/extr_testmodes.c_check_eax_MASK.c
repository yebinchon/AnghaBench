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
                      const void *msg, size_t nmsg,
                      const void *nonce, size_t nnonce,
                      const void *header, size_t nheader,
                      const void *expect_cipher,
                      const void *expect_tag, size_t ntag)
{
  uint8_t cipher[32];
  uint8_t tag[16];

  FUNC1(nmsg <= sizeof cipher);
  FUNC1(ntag <= ntag);

  cf_aes_context aes;
  FUNC2(&aes, key, nkey);

  FUNC4(&cf_aes, &aes,
                 msg, nmsg,
                 header, nheader,
                 nonce, nnonce,
                 cipher,
                 tag, ntag);

  FUNC0(FUNC5(expect_cipher, cipher, nmsg) == 0);
  FUNC0(FUNC5(expect_tag, tag, ntag) == 0);

  int rc;
  uint8_t tmp[sizeof cipher];
  rc = FUNC3(&cf_aes, &aes,
                      cipher, nmsg,
                      header, nheader,
                      nonce, nnonce,
                      tag, ntag,
                      tmp);
  FUNC0(rc == 0);
  FUNC0(FUNC5(tmp, msg, nmsg) == 0);

  tag[0] ^= 0xff;
  rc = FUNC3(&cf_aes, &aes,
                      cipher, nmsg,
                      header, nheader,
                      nonce, nnonce,
                      tag, ntag,
                      tmp);
  FUNC0(rc == 1);
}