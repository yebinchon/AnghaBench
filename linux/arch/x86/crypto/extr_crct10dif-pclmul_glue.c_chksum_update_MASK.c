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
struct shash_desc {int dummy; } ;
struct chksum_desc_ctx {int /*<<< orphan*/  crc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct chksum_desc_ctx* FUNC5 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC6(struct shash_desc *desc, const u8 *data,
			 unsigned int length)
{
	struct chksum_desc_ctx *ctx = FUNC5(desc);

	if (length >= 16 && FUNC2()) {
		FUNC3();
		ctx->crc = FUNC1(ctx->crc, data, length);
		FUNC4();
	} else
		ctx->crc = FUNC0(ctx->crc, data, length);
	return 0;
}