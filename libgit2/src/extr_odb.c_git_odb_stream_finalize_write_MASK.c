#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_7__ {scalar_t__ received_bytes; scalar_t__ declared_size; int (* finalize_write ) (TYPE_2__*,int /*<<< orphan*/ *) ;TYPE_1__* backend; int /*<<< orphan*/  hash_ctx; } ;
typedef  TYPE_2__ git_odb_stream ;
struct TYPE_6__ {int /*<<< orphan*/  odb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,char*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 

int FUNC4(git_oid *out, git_odb_stream *stream)
{
	if (stream->received_bytes != stream->declared_size)
		return FUNC2(stream,
			"stream_finalize_write()");

	FUNC0(out, stream->hash_ctx);

	if (FUNC1(stream->backend->odb, out))
		return 0;

	return stream->finalize_write(stream, out);
}