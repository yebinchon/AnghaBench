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
struct pefile_context {int sig_offset; int /*<<< orphan*/  digest; int /*<<< orphan*/  digest_len; int /*<<< orphan*/  sig_len; } ;
struct key {int dummy; } ;
typedef  enum key_being_used_for { ____Placeholder_key_being_used_for } key_being_used_for ;
typedef  int /*<<< orphan*/  ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pefile_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mscode_parse ; 
 int FUNC3 (void const*,unsigned int,struct pefile_context*) ; 
 int FUNC4 (void const*,unsigned int,struct pefile_context*) ; 
 int FUNC5 (void const*,struct pefile_context*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ,struct key*,int,int /*<<< orphan*/ ,struct pefile_context*) ; 

int FUNC8(const void *pebuf, unsigned pelen,
			    struct key *trusted_keys,
			    enum key_being_used_for usage)
{
	struct pefile_context ctx;
	int ret;

	FUNC0("");

	FUNC2(&ctx, 0, sizeof(ctx));
	ret = FUNC4(pebuf, pelen, &ctx);
	if (ret < 0)
		return ret;

	ret = FUNC5(pebuf, &ctx);
	if (ret < 0)
		return ret;

	ret = FUNC7(NULL, 0,
				     pebuf + ctx.sig_offset, ctx.sig_len,
				     trusted_keys, usage,
				     mscode_parse, &ctx);
	if (ret < 0)
		goto error;

	FUNC6("Digest: %u [%*ph]\n",
		 ctx.digest_len, ctx.digest_len, ctx.digest);

	/* Generate the digest and check against the PKCS7 certificate
	 * contents.
	 */
	ret = FUNC3(pebuf, pelen, &ctx);

error:
	FUNC1(ctx.digest);
	return ret;
}