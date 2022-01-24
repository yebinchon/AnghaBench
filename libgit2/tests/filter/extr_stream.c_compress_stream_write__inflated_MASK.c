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
struct compress_stream {TYPE_1__* next; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write ) (TYPE_1__*,char*,int) ;} ;

/* Variables and functions */
 int CHUNKSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static int FUNC2(struct compress_stream *stream, const char *buffer, size_t len)
{
	char inflated[CHUNKSIZE];
	size_t i, j;

	for (i = 0; i < len; i++) {
		for (j = 0; j < CHUNKSIZE; j++)
			inflated[j] = buffer[i];

		FUNC0(stream->next->write(stream->next, inflated, CHUNKSIZE));
	}

	return 0;
}