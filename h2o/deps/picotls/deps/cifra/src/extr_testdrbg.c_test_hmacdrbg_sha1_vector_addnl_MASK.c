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
typedef  int /*<<< orphan*/  cf_hmac_drbg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cf_sha1 ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
  uint8_t entropy[16], nonce[8], reseed[16], got[80], expect[80], addnl[16];

  /* HMAC_DRBG.rsp, line 174. */
  FUNC5(entropy, sizeof entropy, "7d7052a776fd2fb3d7191f733304ee8b");
  FUNC5(nonce, sizeof nonce, "be4a0ceedca80207");
  FUNC5(reseed, sizeof reseed, "49047e879d610955eed916e4060e00c9");
  FUNC5(expect, sizeof expect, "a736343844fc92511391db0addd9064dbee24c8976aa259a9e3b6368aa6de4c9bf3a0effcda9cb0e9dc33652ab58ecb7650ed80467f76a849fb1cfc1ed0a09f7155086064db324b1e124f3fc9e614fcb");

  cf_hmac_drbg ctx;
  FUNC2(&ctx, &cf_sha1, entropy, sizeof entropy, nonce, sizeof nonce, NULL, 0);
  FUNC5(addnl, sizeof addnl, "fd8bb33aab2f6cdfbc541811861d518d");
  FUNC3(&ctx, reseed, sizeof reseed, addnl, sizeof addnl);
  FUNC5(addnl, sizeof addnl, "99afe347540461ddf6abeb491e0715b4");
  FUNC1(&ctx, addnl, sizeof addnl, got, sizeof got);
  FUNC5(addnl, sizeof addnl, "02f773482dd7ae66f76e381598a64ef0");
  FUNC1(&ctx, addnl, sizeof addnl, got, sizeof got);
  FUNC0(FUNC4(got, expect, sizeof got) == 0);
}