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
typedef  int /*<<< orphan*/  git_writestream ;
struct TYPE_3__ {struct TYPE_3__* hintpath; int /*<<< orphan*/  fbuf; } ;
typedef  TYPE_1__ blob_writestream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(git_writestream *_stream)
{
	blob_writestream *stream = (blob_writestream *) _stream;

	FUNC1(&stream->fbuf);
	FUNC0(stream->hintpath);
	FUNC0(stream);
}