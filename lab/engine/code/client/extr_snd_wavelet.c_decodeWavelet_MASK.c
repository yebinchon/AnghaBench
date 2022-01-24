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
struct TYPE_3__ {int size; scalar_t__ sndChunk; } ;
typedef  TYPE_1__ sndBuffer ;
typedef  size_t byte ;

/* Variables and functions */
 float* mulawToShort ; 
 int /*<<< orphan*/  FUNC0 (float*,int,int) ; 

void FUNC1(sndBuffer *chunk, short *to) {
	float			wksp[4097] = {0};
	int				i;
	byte			*out;

	int size = chunk->size;
	
	out = (byte *)chunk->sndChunk;
	for(i=0;i<size;i++) {
		wksp[i] = mulawToShort[out[i]];
	}

	FUNC0(wksp, size, -1);
	
	if (!to) return;

	for(i=0; i<size; i++) {
		to[i] = wksp[i];
	}
}