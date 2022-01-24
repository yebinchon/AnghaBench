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
typedef  int /*<<< orphan*/  s ;
struct TYPE_4__ {scalar_t__ integer; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* Error ) (int /*<<< orphan*/ ,char*,char*,char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
#define  GL_INVALID_ENUM 133 
#define  GL_INVALID_OPERATION 132 
#define  GL_INVALID_VALUE 131 
 int GL_NO_ERROR ; 
#define  GL_OUT_OF_MEMORY 130 
#define  GL_STACK_OVERFLOW 129 
#define  GL_STACK_UNDERFLOW 128 
 int FUNC1 () ; 
 TYPE_2__* r_ignoreGLErrors ; 
 TYPE_1__ ri ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*,int) ; 

void FUNC4( char *file, int line ) {
	int		err;
	char	s[64];

	err = FUNC1();
	if ( err == GL_NO_ERROR ) {
		return;
	}
	if ( r_ignoreGLErrors->integer ) {
		return;
	}
	switch( err ) {
		case GL_INVALID_ENUM:
			FUNC2( s, "GL_INVALID_ENUM" );
			break;
		case GL_INVALID_VALUE:
			FUNC2( s, "GL_INVALID_VALUE" );
			break;
		case GL_INVALID_OPERATION:
			FUNC2( s, "GL_INVALID_OPERATION" );
			break;
		case GL_STACK_OVERFLOW:
			FUNC2( s, "GL_STACK_OVERFLOW" );
			break;
		case GL_STACK_UNDERFLOW:
			FUNC2( s, "GL_STACK_UNDERFLOW" );
			break;
		case GL_OUT_OF_MEMORY:
			FUNC2( s, "GL_OUT_OF_MEMORY" );
			break;
		default:
			FUNC0( s, sizeof(s), "%i", err);
			break;
	}

	ri.Error( ERR_FATAL, "GL_CheckErrors: %s in %s at line %d", s , file, line);
}