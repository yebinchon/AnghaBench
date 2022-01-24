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
typedef  int ddsPF_t ;
typedef  int /*<<< orphan*/  ddsBuffer_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int,unsigned char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,unsigned char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int,unsigned char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,unsigned char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,unsigned char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,unsigned char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int*,int*,int*) ; 
#define  DDS_PF_ARGB8888 134 
#define  DDS_PF_DXT1 133 
#define  DDS_PF_DXT2 132 
#define  DDS_PF_DXT3 131 
#define  DDS_PF_DXT4 130 
#define  DDS_PF_DXT5 129 
#define  DDS_PF_UNKNOWN 128 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int,int) ; 

int FUNC8( ddsBuffer_t *dds, unsigned char *pixels ){
	int width, height, r;
	ddsPF_t pf;


	/* get dds info */
	r = FUNC6( dds, &width, &height, &pf );
	if ( r ) {
		return r;
	}

	/* decompress */
	switch ( pf )
	{
	case DDS_PF_ARGB8888:
		/* fixme: support other [a]rgb formats */
		r = FUNC0( dds, width, height, pixels );
		break;

	case DDS_PF_DXT1:
		r = FUNC1( dds, width, height, pixels );
		break;

	case DDS_PF_DXT2:
		r = FUNC2( dds, width, height, pixels );
		break;

	case DDS_PF_DXT3:
		r = FUNC3( dds, width, height, pixels );
		break;

	case DDS_PF_DXT4:
		r = FUNC4( dds, width, height, pixels );
		break;

	case DDS_PF_DXT5:
		r = FUNC5( dds, width, height, pixels );
		break;

	default:
	case DDS_PF_UNKNOWN:
		FUNC7( pixels, 0xFF, width * height * 4 );
		r = -1;
		break;
	}

	/* return to sender */
	return r;
}