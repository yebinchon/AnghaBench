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
struct TYPE_3__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ drawBufferCommand_t ;
struct TYPE_4__ {scalar_t__ integer; } ;

/* Variables and functions */
 int GL_COLOR_BUFFER_BIT ; 
 int GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,double,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* r_clear ; 

const void	*FUNC3( const void *data ) {
	const drawBufferCommand_t	*cmd;

	cmd = (const drawBufferCommand_t *)data;

	FUNC2( cmd->buffer );

	// clear screen for debugging
	if ( r_clear->integer ) {
		FUNC1( 1, 0, 0.5, 1 );
		FUNC0( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
	}

	return (const void *)(cmd + 1);
}