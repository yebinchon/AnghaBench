#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  error_exit; } ;
struct my_jpeg_error_mgr {int /*<<< orphan*/  setjmp_buffer; TYPE_2__ pub; } ;
struct jpeg_decompress_struct {int output_width; int output_components; int output_height; int output_scanline; int out_color_components; TYPE_1__* mem; int /*<<< orphan*/  err; } ;
typedef  int /*<<< orphan*/  j_common_ptr ;
struct TYPE_3__ {int /*<<< orphan*/ * (* alloc_sarray ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ;} ;
typedef  int /*<<< orphan*/ * JSAMPARRAY ;

/* Variables and functions */
 int /*<<< orphan*/  JPOOL_IMAGE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ errormsg ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct jpeg_decompress_struct*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct jpeg_decompress_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct jpeg_decompress_struct*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  my_jpeg_error_exit ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

int FUNC15( void *src_buffer, int src_size, unsigned char **pic, int *width, int *height ) {
	struct jpeg_decompress_struct cinfo;
	struct my_jpeg_error_mgr jerr;
	JSAMPARRAY buffer;
	int row_stride, size;

	cinfo.err = FUNC10( &jerr.pub );
	jerr.pub.error_exit = my_jpeg_error_exit;

	if ( FUNC13( jerr.setjmp_buffer ) ) {
		*pic = (unsigned char*)errormsg;
		FUNC5( &cinfo );
		return -1;
	}

	FUNC4( &cinfo );
	FUNC3( &cinfo, src_buffer, src_size );
	FUNC7( &cinfo, TRUE );
	FUNC9( &cinfo );

	row_stride = cinfo.output_width * cinfo.output_components;

	size = cinfo.output_width * cinfo.output_height * 4;
	*width = cinfo.output_width;
	*height = cinfo.output_height;
	*pic = (unsigned char*)( FUNC11( size + 1 ) );
	FUNC12( *pic, 0, size + 1 );

	buffer = ( *cinfo.mem->alloc_sarray )( ( j_common_ptr ) & cinfo, JPOOL_IMAGE, row_stride, 1 );

	while ( cinfo.output_scanline < cinfo.output_height )
	{
		FUNC8( &cinfo, buffer, 1 );

		if ( cinfo.out_color_components == 4 ) {
			FUNC1( buffer[0], cinfo.output_width, *pic, cinfo.output_scanline - 1 );
		}
		else if ( cinfo.out_color_components == 3 ) {
			FUNC2( buffer[0], cinfo.output_width, *pic, cinfo.output_scanline - 1 );
		}
		else if ( cinfo.out_color_components == 1 ) {
			FUNC0( buffer[0], cinfo.output_width, *pic, cinfo.output_scanline - 1 );
		}
	}

	FUNC6( &cinfo );
	FUNC5( &cinfo );

	return 0;
}