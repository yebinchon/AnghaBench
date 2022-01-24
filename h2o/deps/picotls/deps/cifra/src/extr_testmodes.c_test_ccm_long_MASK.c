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
typedef  int /*<<< orphan*/  cf_aes_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cf_aes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC4 (void const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(void)
{
  /* This is example 4 from SP800-38C, to test the long AAD code path. */
  uint8_t header[0x10000];
  uint8_t key[16];
  uint8_t tag[14];
  uint8_t nonce[13];
  uint8_t plain[32], cipher[32];

  FUNC3(header, sizeof header, 0x00);
  FUNC3(key, sizeof key, 0x40);
  FUNC3(nonce, sizeof nonce, 0x10);
  FUNC3(plain, sizeof plain, 0x20);

  const void *expect_tag = "\xb4\xac\x6b\xec\x93\xe8\x59\x8e\x7f\x0d\xad\xbc\xea\x5b";
  const void *expect_cipher = "\x69\x91\x5d\xad\x1e\x84\xc6\x37\x6a\x68\xc2\x96\x7e\x4d\xab\x61\x5a\xe0\xfd\x1f\xae\xc4\x4c\xc4\x84\x82\x85\x29\x46\x3c\xcf\x72";

  cf_aes_context ctx;
  FUNC1(&ctx, key, sizeof key);

  FUNC2(&cf_aes, &ctx,
                 plain, sizeof plain, 15 - sizeof nonce,
                 header, sizeof header,
                 nonce, sizeof nonce,
                 cipher,
                 tag, sizeof tag);

  FUNC0(FUNC4(expect_tag, tag, sizeof tag) == 0);
  FUNC0(FUNC4(expect_cipher, cipher, sizeof cipher) == 0);
}