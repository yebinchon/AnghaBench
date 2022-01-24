#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int filelen; scalar_t__ fileofs; } ;
typedef  TYPE_1__ lump_t ;
struct TYPE_9__ {void* surfaceFlags; void* contentFlags; } ;
typedef  TYPE_2__ dshader_t ;
struct TYPE_10__ {int numShaders; TYPE_2__* shaders; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 TYPE_2__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*) ; 
 TYPE_3__ cm ; 
 scalar_t__ cmod_base ; 
 int /*<<< orphan*/  h_high ; 

void FUNC4( lump_t *l ) {
	dshader_t	*in, *out;
	int			i, count;

	in = (void *)(cmod_base + l->fileofs);
	if (l->filelen % sizeof(*in)) {
		FUNC0 (ERR_DROP, "CMod_LoadShaders: funny lump size");
	}
	count = l->filelen / sizeof(*in);

	if (count < 1) {
		FUNC0 (ERR_DROP, "Map with no shaders");
	}
	cm.shaders = FUNC2( count * sizeof( *cm.shaders ), h_high );
	cm.numShaders = count;

	FUNC1( cm.shaders, in, count * sizeof( *cm.shaders ) );

	out = cm.shaders;
	for ( i=0 ; i<count ; i++, in++, out++ ) {
		out->contentFlags = FUNC3( out->contentFlags );
		out->surfaceFlags = FUNC3( out->surfaceFlags );
	}
}