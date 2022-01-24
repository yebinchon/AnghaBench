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
struct TYPE_3__ {int /*<<< orphan*/ * lumps; } ;
typedef  TYPE_1__ dheader_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,int) ; 
 size_t LUMP_BRUSHES ; 
 size_t LUMP_BRUSHSIDES ; 
 size_t LUMP_DRAWVERTS ; 
 size_t LUMP_LEAFBRUSHES ; 
 size_t LUMP_LEAFS ; 
 size_t LUMP_LEAFSURFACES ; 
 size_t LUMP_MODELS ; 
 size_t LUMP_NODES ; 
 size_t LUMP_PLANES ; 
 size_t LUMP_SHADERS ; 
 size_t LUMP_SURFACES ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

unsigned FUNC3(dheader_t *header) {
	unsigned checksums[16];
	checksums[0] = FUNC0(&header->lumps[LUMP_SHADERS]);
	checksums[1] = FUNC0(&header->lumps[LUMP_LEAFS]);
	checksums[2] = FUNC0(&header->lumps[LUMP_LEAFBRUSHES]);
	checksums[3] = FUNC0(&header->lumps[LUMP_LEAFSURFACES]);
	checksums[4] = FUNC0(&header->lumps[LUMP_PLANES]);
	checksums[5] = FUNC0(&header->lumps[LUMP_BRUSHSIDES]);
	checksums[6] = FUNC0(&header->lumps[LUMP_BRUSHES]);
	checksums[7] = FUNC0(&header->lumps[LUMP_MODELS]);
	checksums[8] = FUNC0(&header->lumps[LUMP_NODES]);
	checksums[9] = FUNC0(&header->lumps[LUMP_SURFACES]);
	checksums[10] = FUNC0(&header->lumps[LUMP_DRAWVERTS]);

	return FUNC2(FUNC1(checksums, 11 * 4));
}