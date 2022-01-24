#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct TYPE_5__ {unsigned char* next_out; unsigned long avail_out; } ;
typedef  TYPE_1__ git_zstream ;

/* Variables and functions */
 int Z_OK ; 
 int Z_STREAM_END ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,void*,int) ; 
 int FUNC3 (TYPE_1__*,unsigned char*,unsigned long,void*,unsigned long) ; 

__attribute__((used)) static int FUNC4(git_zstream *stream, unsigned char *map,
					 unsigned long mapsize, void *buffer,
					 unsigned long bufsiz, struct strbuf *header)
{
	int status;

	status = FUNC3(stream, map, mapsize, buffer, bufsiz);
	if (status < Z_OK)
		return -1;

	/*
	 * Check if entire header is unpacked in the first iteration.
	 */
	if (FUNC1(buffer, '\0', stream->next_out - (unsigned char *)buffer))
		return 0;

	/*
	 * buffer[0..bufsiz] was not large enough.  Copy the partial
	 * result out to header, and then append the result of further
	 * reading the stream.
	 */
	FUNC2(header, buffer, stream->next_out - (unsigned char *)buffer);
	stream->next_out = buffer;
	stream->avail_out = bufsiz;

	do {
		status = FUNC0(stream, 0);
		FUNC2(header, buffer, stream->next_out - (unsigned char *)buffer);
		if (FUNC1(buffer, '\0', stream->next_out - (unsigned char *)buffer))
			return 0;
		stream->next_out = buffer;
		stream->avail_out = bufsiz;
	} while (status != Z_STREAM_END);
	return -1;
}