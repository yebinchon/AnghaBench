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
struct TYPE_5__ {int /*<<< orphan*/  info; int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ snd_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 TYPE_1__* FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wav_codec ; 

snd_stream_t *FUNC3(const char *filename)
{
	snd_stream_t *rv;

	// Open
	rv = FUNC1(filename, &wav_codec);
	if(!rv)
		return NULL;

	// Read the RIFF header
	if(!FUNC2(rv->file, &rv->info))
	{
		FUNC0(&rv);
		return NULL;
	}

	return rv;
}