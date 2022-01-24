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
typedef  int /*<<< orphan*/  git_writestream ;
struct TYPE_2__ {int /*<<< orphan*/  fbuf; } ;
typedef  TYPE_1__ blob_writestream ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static int FUNC1(git_writestream *_stream, const char *buffer, size_t len)
{
	blob_writestream *stream = (blob_writestream *) _stream;

	return FUNC0(&stream->fbuf, buffer, len);
}