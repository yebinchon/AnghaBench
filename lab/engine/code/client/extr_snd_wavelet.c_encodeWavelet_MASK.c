#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int size; scalar_t__ sndChunk; struct TYPE_5__* next; } ;
typedef  TYPE_1__ sndBuffer ;
struct TYPE_6__ {int soundLength; TYPE_1__* soundData; } ;
typedef  TYPE_2__ sfx_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (short) ; 
 int SND_CHUNK_SIZE ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ madeTable ; 
 float* mulawToShort ; 
 scalar_t__ qtrue ; 
 int /*<<< orphan*/  FUNC3 (float*,int,int) ; 

void FUNC4( sfx_t *sfx, short *packets) {
	float	wksp[4097] = {0}, temp;
	int		i, samples, size;
	sndBuffer		*newchunk, *chunk;
	byte			*out;

	if (!madeTable) {
		for (i=0;i<256;i++) {
			mulawToShort[i] = (float)FUNC0((byte)i);
		}
		madeTable = qtrue;
	}
	chunk = NULL;

	samples = sfx->soundLength;
	while(samples>0) {
		size = samples;
		if (size>(SND_CHUNK_SIZE*2)) {
			size = (SND_CHUNK_SIZE*2);
		}

		if (size<4) {
			size = 4;
		}

		newchunk = FUNC2();
		if (sfx->soundData == NULL) {
			sfx->soundData = newchunk;
		} else if (chunk != NULL) {
			chunk->next = newchunk;
		}
		chunk = newchunk;
		for(i=0; i<size; i++) {
			wksp[i] = *packets;
			packets++;
		}
		FUNC3(wksp, size, 1);
		out = (byte *)chunk->sndChunk;

		for(i=0;i<size;i++) {
			temp = wksp[i];
			if (temp > 32767) temp = 32767; else if (temp<-32768) temp = -32768;
			out[i] = FUNC1((short)temp);
		}

		chunk->size = size;
		samples -= size;
	}
}