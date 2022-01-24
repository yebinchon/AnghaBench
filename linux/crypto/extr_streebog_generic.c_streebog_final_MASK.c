#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/ * qword; } ;
struct streebog_state {TYPE_1__ hash; scalar_t__ fillsize; } ;
struct shash_desc {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 scalar_t__ STREEBOG256_DIGEST_SIZE ; 
 scalar_t__ STREEBOG512_DIGEST_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 struct streebog_state* FUNC2 (struct shash_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct streebog_state*) ; 

__attribute__((used)) static int FUNC4(struct shash_desc *desc, u8 *digest)
{
	struct streebog_state *ctx = FUNC2(desc);

	FUNC3(ctx);
	ctx->fillsize = 0;
	if (FUNC0(desc->tfm) == STREEBOG256_DIGEST_SIZE)
		FUNC1(digest, &ctx->hash.qword[4], STREEBOG256_DIGEST_SIZE);
	else
		FUNC1(digest, &ctx->hash.qword[0], STREEBOG512_DIGEST_SIZE);
	return 0;
}