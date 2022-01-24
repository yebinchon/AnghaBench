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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cf_sha1 ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
  uint8_t entropy[16], nonce[8], reseed[16], got[80], expect[80];

  /* HMAC_DRBG.rsp, line 8. */
  FUNC5(entropy, sizeof entropy, "79349bbf7cdda5799557866621c91383");
  FUNC5(nonce, sizeof nonce, "1146733abf8c35c8");
  FUNC5(reseed, sizeof reseed, "c7215b5b96c48e9b338c74e3e99dfedf");
  FUNC5(expect, sizeof expect, "c6a16ab8d420706f0f34ab7fec5adca9d8ca3a133e159ca6ac43c6f8a2be22834a4c0a0affb10d7194f1c1a5cf7322ec1ae0964ed4bf122746e087fdb5b3e91b3493d5bb98faed49e85f130fc8a459b7");

  cf_hmac_drbg ctx;
  FUNC2(&ctx, &cf_sha1, entropy, sizeof entropy, nonce, sizeof nonce, NULL, 0);
  FUNC3(&ctx, reseed, sizeof reseed, NULL, 0);
  FUNC1(&ctx, got, sizeof got);
  FUNC1(&ctx, got, sizeof got);
  FUNC0(FUNC4(got, expect, sizeof got) == 0);
}