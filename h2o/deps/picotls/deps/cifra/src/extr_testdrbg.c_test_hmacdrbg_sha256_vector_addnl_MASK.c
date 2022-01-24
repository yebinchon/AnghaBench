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
 int /*<<< orphan*/  cf_sha256 ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
  uint8_t entropy[32], nonce[16], reseed[32], got[128], expect[128], addnl[32];

  /* HMAC_DRBG.rsp, line 5230. */
  FUNC5(entropy, sizeof entropy, "05ac9fc4c62a02e3f90840da5616218c6de5743d66b8e0fbf833759c5928b53d");
  FUNC5(nonce, sizeof nonce, "2b89a17904922ed8f017a63044848545");
  FUNC5(reseed, sizeof reseed, "2791126b8b52ee1fd9392a0a13e0083bed4186dc649b739607ac70ec8dcecf9b");
  FUNC5(expect, sizeof expect, "02ddff5173da2fcffa10215b030d660d61179e61ecc22609b1151a75f1cbcbb4363c3a89299b4b63aca5e581e73c860491010aa35de3337cc6c09ebec8c91a6287586f3a74d9694b462d2720ea2e11bbd02af33adefb4a16e6b370fa0effd57d607547bdcfbb7831f54de7073ad2a7da987a0016a82fa958779a168674b56524");

  cf_hmac_drbg ctx;
  FUNC2(&ctx, &cf_sha256, entropy, sizeof entropy, nonce, sizeof nonce, NULL, 0);
  FUNC5(addnl, sizeof addnl, "43bac13bae715092cf7eb280a2e10a962faf7233c41412f69bc74a35a584e54c");
  FUNC3(&ctx, reseed, sizeof reseed, addnl, sizeof addnl);
  FUNC5(addnl, sizeof addnl, "3f2fed4b68d506ecefa21f3f5bb907beb0f17dbc30f6ffbba5e5861408c53a1e");
  FUNC1(&ctx, addnl, sizeof addnl, got, sizeof got);
  FUNC5(addnl, sizeof addnl, "529030df50f410985fde068df82b935ec23d839cb4b269414c0ede6cffea5b68");
  FUNC1(&ctx, addnl, sizeof addnl, got, sizeof got);
  FUNC0(FUNC4(got, expect, sizeof got) == 0);
}