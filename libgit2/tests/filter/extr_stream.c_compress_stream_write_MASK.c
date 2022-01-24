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
struct compress_stream {scalar_t__ mode; } ;
typedef  int /*<<< orphan*/  git_writestream ;

/* Variables and functions */
 scalar_t__ GIT_FILTER_TO_ODB ; 
 int FUNC0 (struct compress_stream*,char const*,size_t) ; 
 int FUNC1 (struct compress_stream*,char const*,size_t) ; 

__attribute__((used)) static int FUNC2(git_writestream *s, const char *buffer, size_t len)
{
	struct compress_stream *stream = (struct compress_stream *)s;

	return (stream->mode == GIT_FILTER_TO_ODB) ?
		FUNC0(stream, buffer, len) :
		FUNC1(stream, buffer, len);
}