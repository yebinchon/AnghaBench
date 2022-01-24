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
struct z_stream_s {int /*<<< orphan*/  workspace; } ;
struct deflate_ctx {struct z_stream_s decomp_stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFLATE_DEF_WINBITS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int Z_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct z_stream_s*) ; 
 int FUNC3 (struct z_stream_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct deflate_ctx *ctx, int format)
{
	int ret = 0;
	struct z_stream_s *stream = &ctx->decomp_stream;

	stream->workspace = FUNC1(FUNC4());
	if (!stream->workspace) {
		ret = -ENOMEM;
		goto out;
	}
	if (format)
		ret = FUNC2(stream);
	else
		ret = FUNC3(stream, -DEFLATE_DEF_WINBITS);
	if (ret != Z_OK) {
		ret = -EINVAL;
		goto out_free;
	}
out:
	return ret;
out_free:
	FUNC0(stream->workspace);
	goto out;
}