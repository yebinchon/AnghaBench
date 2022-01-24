#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ isMirror; scalar_t__ vertFlipBuffer; } ;
struct TYPE_6__ {TYPE_1__ viewParms; } ;
struct TYPE_5__ {int faceCulling; scalar_t__ faceCullFront; } ;
typedef  scalar_t__ GLenum ;

/* Variables and functions */
 int CT_FRONT_SIDED ; 
 int CT_TWO_SIDED ; 
 scalar_t__ GL_BACK ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 scalar_t__ GL_FRONT ; 
 TYPE_3__ backEnd ; 
 TYPE_2__ glState ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3( int cullType ) {
	if ( cullType == CT_TWO_SIDED )
	{
		if ( glState.faceCulling != CT_TWO_SIDED )
		{
			FUNC1( GL_CULL_FACE );
		}
	} 
	else 
	{
		GLenum faceCullFront;
		if ( backEnd.viewParms.isMirror != backEnd.viewParms.vertFlipBuffer )
		{
			faceCullFront = (cullType == CT_FRONT_SIDED) ? GL_BACK : GL_FRONT;
		}
		else
		{
			faceCullFront = (cullType == CT_FRONT_SIDED) ? GL_FRONT : GL_BACK;
		}

		if ( glState.faceCulling != cullType )
		{
			FUNC2( GL_CULL_FACE );
		}

		if ( glState.faceCullFront != faceCullFront )
		{
			FUNC0( faceCullFront );
			glState.faceCullFront = faceCullFront;
		}

	}

	glState.faceCulling = cullType;
}