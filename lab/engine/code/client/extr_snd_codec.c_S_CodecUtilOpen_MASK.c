#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int length; scalar_t__ file; int /*<<< orphan*/ * codec; } ;
typedef  TYPE_1__ snd_stream_t ;
typedef  int /*<<< orphan*/  snd_codec_t ;
typedef  scalar_t__ fileHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (char const*,scalar_t__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  qtrue ; 

snd_stream_t *FUNC4(const char *filename, snd_codec_t *codec)
{
	snd_stream_t *stream;
	fileHandle_t hnd;
	int length;

	// Try to open the file
	length = FUNC2(filename, &hnd, qtrue);
	if(!hnd)
	{
		FUNC0("Can't read sound file %s\n", filename);
		return NULL;
	}

	// Allocate a stream
	stream = FUNC3(sizeof(snd_stream_t));
	if(!stream)
	{
		FUNC1(hnd);
		return NULL;
	}

	// Copy over, return
	stream->codec = codec;
	stream->file = hnd;
	stream->length = length;
	return stream;
}