#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t len; } ;
struct window {TYPE_1__ out; int /*<<< orphan*/  data; int /*<<< orphan*/  instructions; } ;
struct sliding_view {int dummy; } ;
struct line_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct window FUNC0 (struct sliding_view*) ; 
 scalar_t__ FUNC1 (struct window*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct line_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC5 (struct line_buffer*,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct window*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct line_buffer *delta, off_t *delta_len,
			    struct sliding_view *preimage, FILE *out)
{
	int rv = -1;
	struct window ctx = FUNC0(preimage);
	size_t out_len;
	size_t instructions_len;
	size_t data_len;
	FUNC2(delta_len);

	/* "source view" offset and length already handled; */
	if (FUNC5(delta, &out_len, delta_len) ||
	    FUNC5(delta, &instructions_len, delta_len) ||
	    FUNC5(delta, &data_len, delta_len) ||
	    FUNC4(delta, delta_len, &ctx.instructions, instructions_len) ||
	    FUNC4(delta, delta_len, &ctx.data, data_len))
		goto error_out;
	FUNC6(&ctx.out, out_len);
	if (FUNC1(&ctx))
		goto error_out;
	if (ctx.out.len != out_len) {
		rv = FUNC3("invalid delta: incorrect postimage length");
		goto error_out;
	}
	if (FUNC8(&ctx.out, out))
		goto error_out;
	rv = 0;
error_out:
	FUNC7(&ctx);
	return rv;
}