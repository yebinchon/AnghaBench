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
 int /*<<< orphan*/  cf_sha512 ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
  uint8_t entropy[32], nonce[16], reseed[32], got[256], expect[256], addnl[32];

  /* HMAC_DRBG.rsp, line 10286. */
  FUNC5(entropy, sizeof entropy, "4686a959e17dfb96c294b09c0f7a60efb386416cfb4c8972bcc55e44a151607a");
  FUNC5(nonce, sizeof nonce, "5226543b4c89321bbfb0f11f18ee3462");
  FUNC5(reseed, sizeof reseed, "5ef50daaf29929047870235c17762f5df5d9ab1af656e0e215fcc6fd9fc0d85d");
  FUNC5(expect, sizeof expect, "b60d8803531b2b8583d17bdf3ac7c01f3c65cf9b069862b2d39b9024b34c172b712db0704acb078a1ab1aec0390dbaee2dec9be7b234e63da481fd469a92c77bc7bb2cfca586855520e0f9e9d47dcb9bdf2a2fdfa9f2b4342ef0ea582616b55477717cfd516d46d6383257743656f7cf8b38402ba795a8c9d35a4aa88bec623313dad6ead689d152b54074f183b2fee556f554db343626cea853718f18d386bc8bebb0c07b3c5e96ceb391ffceece88864dbd3be83a613562c5c417a24807d5f9332974f045e79a9ade36994af6cf9bbeeb71d0025fcb4ad50f121cbc2df7cd12ff5a50cddfd9a4bbc6d942d743c8b8fbebe00eeccea3d14e07ff8454fa715da");

  cf_hmac_drbg ctx;
  FUNC2(&ctx, &cf_sha512, entropy, sizeof entropy, nonce, sizeof nonce, NULL, 0);
  FUNC5(addnl, sizeof addnl, "d2383c3e528492269e6c3b3aaa2b54fbf48731f5aa52150ce7fc644679a5e7c6");
  FUNC3(&ctx, reseed, sizeof reseed, addnl, sizeof addnl);
  FUNC5(addnl, sizeof addnl, "c841e7a2d9d13bdb8644cd7f5d91d241a369e12dc6c9c2be50d1ed29484bff98");
  FUNC1(&ctx, addnl, sizeof addnl, got, sizeof got);
  FUNC5(addnl, sizeof addnl, "9054cf9216af66a788d3bf6757b8987e42d4e49b325e728dc645d5e107048245");
  FUNC1(&ctx, addnl, sizeof addnl, got, sizeof got);
  FUNC0(FUNC4(got, expect, sizeof got) == 0);
}