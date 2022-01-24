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
struct compress_stream {TYPE_1__* next; int /*<<< orphan*/  current_chunk; } ;
typedef  int /*<<< orphan*/  git_writestream ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(git_writestream *s)
{
	struct compress_stream *stream = (struct compress_stream *)s;
	FUNC0(0, stream->current_chunk);
	stream->next->close(stream->next);
	return 0;
}