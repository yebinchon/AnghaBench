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
struct tpm_parse_context {int /*<<< orphan*/  blob_len; int /*<<< orphan*/  blob; } ;
struct tpm_key {int dummy; } ;
typedef  int /*<<< orphan*/  ctx ;

/* Variables and functions */
 struct tpm_key* FUNC0 (long) ; 
 long FUNC1 (int /*<<< orphan*/ *,struct tpm_parse_context*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct tpm_parse_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tpm_decoder ; 
 struct tpm_key* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct tpm_key *FUNC4(const void *data, size_t datalen)
{
	struct tpm_parse_context ctx;
	long ret;

	FUNC2(&ctx, 0, sizeof(ctx));

	/* Attempt to decode the private key */
	ret = FUNC1(&tpm_decoder, &ctx, data, datalen);
	if (ret < 0)
		goto error;

	return FUNC3(ctx.blob, ctx.blob_len);

error:
	return FUNC0(ret);
}