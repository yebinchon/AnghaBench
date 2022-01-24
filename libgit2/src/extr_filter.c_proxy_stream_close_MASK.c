#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
struct proxy_stream {TYPE_3__* target; TYPE_2__* output; TYPE_2__ input; int /*<<< orphan*/  source; int /*<<< orphan*/  payload; TYPE_6__* filter; } ;
typedef  int /*<<< orphan*/  git_writestream ;
struct TYPE_12__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_error_state ;
typedef  TYPE_2__ git_buf ;
struct TYPE_15__ {int (* apply ) (TYPE_6__*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_14__ {int (* close ) (TYPE_3__*) ;int (* write ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int GIT_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC0 (struct proxy_stream*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC8(git_writestream *s)
{
	struct proxy_stream *proxy_stream = (struct proxy_stream *)s;
	git_buf *writebuf;
	git_error_state error_state = {0};
	int error;

	FUNC0(proxy_stream);

	error = proxy_stream->filter->apply(
		proxy_stream->filter,
		proxy_stream->payload,
		proxy_stream->output,
		&proxy_stream->input,
		proxy_stream->source);

	if (error == GIT_PASSTHROUGH) {
		writebuf = &proxy_stream->input;
	} else if (error == 0) {
		FUNC1(proxy_stream->output);
		writebuf = proxy_stream->output;
	} else {
		/* close stream before erroring out taking care
		 * to preserve the original error */
		FUNC2(&error_state, error);
		proxy_stream->target->close(proxy_stream->target);
		FUNC3(&error_state);
		return error;
	}

	if ((error = proxy_stream->target->write(
			proxy_stream->target, writebuf->ptr, writebuf->size)) == 0)
		error = proxy_stream->target->close(proxy_stream->target);

	return error;
}