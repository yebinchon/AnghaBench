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
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int FUNC0 (short) ; 

void FUNC1( int samples, int width, int s_channels, const byte *data ) {
	int		i;

	if ( width != 2 ) {
		return;
	}
	if ( FUNC0( 256 ) == 256 ) {
		return;
	}

	if ( s_channels == 2 ) {
		samples <<= 1;
	}
	for ( i = 0 ; i < samples ; i++ ) {
		((short *)data)[i] = FUNC0( ((short *)data)[i] );
	}
}