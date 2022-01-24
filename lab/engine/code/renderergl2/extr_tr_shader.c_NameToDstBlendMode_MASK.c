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
struct TYPE_6__ {scalar_t__ integer; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int GLS_DSTBLEND_DST_ALPHA ; 
 int GLS_DSTBLEND_ONE ; 
 int GLS_DSTBLEND_ONE_MINUS_DST_ALPHA ; 
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ; 
 int GLS_DSTBLEND_ONE_MINUS_SRC_COLOR ; 
 int GLS_DSTBLEND_SRC_ALPHA ; 
 int GLS_DSTBLEND_SRC_COLOR ; 
 int GLS_DSTBLEND_ZERO ; 
 int /*<<< orphan*/  PRINT_WARNING ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 TYPE_3__* r_ignoreDstAlpha ; 
 TYPE_2__ ri ; 
 TYPE_1__ shader ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2( const char *name )
{
	if ( !FUNC0( name, "GL_ONE" ) )
	{
		return GLS_DSTBLEND_ONE;
	}
	else if ( !FUNC0( name, "GL_ZERO" ) )
	{
		return GLS_DSTBLEND_ZERO;
	}
	else if ( !FUNC0( name, "GL_SRC_ALPHA" ) )
	{
		return GLS_DSTBLEND_SRC_ALPHA;
	}
	else if ( !FUNC0( name, "GL_ONE_MINUS_SRC_ALPHA" ) )
	{
		return GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA;
	}
	else if ( !FUNC0( name, "GL_DST_ALPHA" ) )
	{
		if (r_ignoreDstAlpha->integer)
			return GLS_DSTBLEND_ONE;

		return GLS_DSTBLEND_DST_ALPHA;
	}
	else if ( !FUNC0( name, "GL_ONE_MINUS_DST_ALPHA" ) )
	{
		if (r_ignoreDstAlpha->integer)
			return GLS_DSTBLEND_ZERO;

		return GLS_DSTBLEND_ONE_MINUS_DST_ALPHA;
	}
	else if ( !FUNC0( name, "GL_SRC_COLOR" ) )
	{
		return GLS_DSTBLEND_SRC_COLOR;
	}
	else if ( !FUNC0( name, "GL_ONE_MINUS_SRC_COLOR" ) )
	{
		return GLS_DSTBLEND_ONE_MINUS_SRC_COLOR;
	}

	ri.Printf( PRINT_WARNING, "WARNING: unknown blend mode '%s' in shader '%s', substituting GL_ONE\n", name, shader.name );
	return GLS_DSTBLEND_ONE;
}