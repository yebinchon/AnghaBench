#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {short sample; scalar_t__ index; } ;
struct TYPE_9__ {scalar_t__ sndChunk; TYPE_1__ adpcm; struct TYPE_9__* next; } ;
typedef  TYPE_2__ sndBuffer ;
struct TYPE_10__ {int soundLength; TYPE_2__* soundData; } ;
typedef  TYPE_3__ sfx_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_11__ {short sample; scalar_t__ index; } ;
typedef  TYPE_4__ adpcm_state_t ;

/* Variables and functions */
 int SND_CHUNK_SIZE_BYTE ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (short*,char*,int,TYPE_4__*) ; 

void FUNC2( sfx_t *sfx, short *samples ) {
	adpcm_state_t	state;
	int				inOffset;
	int				count;
	int				n;
	sndBuffer		*newchunk, *chunk;
	byte			*out;

	inOffset = 0;
	count = sfx->soundLength;
	state.index = 0;
	state.sample = samples[0];

	chunk = NULL;
	while( count ) {
		n = count;
		if( n > SND_CHUNK_SIZE_BYTE*2 ) {
			n = SND_CHUNK_SIZE_BYTE*2;
		}

		newchunk = FUNC0();
		if (sfx->soundData == NULL) {
			sfx->soundData = newchunk;
		} else if (chunk != NULL) {
			chunk->next = newchunk;
		}
		chunk = newchunk;

		// output the header
		chunk->adpcm.index  = state.index;
		chunk->adpcm.sample = state.sample;

		out = (byte *)chunk->sndChunk;

		// encode the samples
		FUNC1( samples + inOffset, (char *) out, n, &state );

		inOffset += n;
		count -= n;
	}
}