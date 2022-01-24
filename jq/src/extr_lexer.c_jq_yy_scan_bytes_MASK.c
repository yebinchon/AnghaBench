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
typedef  int /*<<< orphan*/  yyscan_t ;
typedef  scalar_t__ yy_size_t ;
typedef  TYPE_1__* YY_BUFFER_STATE ;
struct TYPE_4__ {int yy_is_our_buffer; } ;

/* Variables and functions */
 char YY_END_OF_BUFFER_CHAR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

YY_BUFFER_STATE FUNC3  (const char * yybytes, int  _yybytes_len , yyscan_t yyscanner)
{
	YY_BUFFER_STATE b;
	char *buf;
	yy_size_t n;
	int i;
    
	/* Get memory for full buffer, including space for trailing EOB's. */
	n = (yy_size_t) (_yybytes_len + 2);
	buf = (char *) FUNC2( n , yyscanner );
	if ( ! buf )
		FUNC0( "out of dynamic memory in yy_scan_bytes()" );

	for ( i = 0; i < _yybytes_len; ++i )
		buf[i] = yybytes[i];

	buf[_yybytes_len] = buf[_yybytes_len+1] = YY_END_OF_BUFFER_CHAR;

	b = FUNC1( buf, n , yyscanner);
	if ( ! b )
		FUNC0( "bad buffer in yy_scan_bytes()" );

	/* It's okay to grow etc. this buffer, and we should throw it
	 * away when we're done.
	 */
	b->yy_is_our_buffer = 1;

	return b;
}