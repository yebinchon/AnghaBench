#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qhandle_t ;
struct TYPE_10__ {float** axis; float* origin; } ;
typedef  TYPE_1__ orientation_t ;
struct TYPE_11__ {scalar_t__ type; int /*<<< orphan*/ * mdv; scalar_t__ modelData; } ;
typedef  TYPE_2__ model_t ;
struct TYPE_12__ {float* origin; float** axis; } ;
typedef  TYPE_3__ mdvTag_t ;
typedef  int /*<<< orphan*/  mdrHeader_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float**) ; 
 scalar_t__ MOD_IQM ; 
 scalar_t__ MOD_MDR ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *,int,char const*,TYPE_3__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int,char const*) ; 
 int FUNC4 (TYPE_1__*,scalar_t__,int,int,float,char const*) ; 
 int /*<<< orphan*/  FUNC5 (float*) ; 
 int /*<<< orphan*/  FUNC6 (float*) ; 
 int qfalse ; 
 int qtrue ; 

int FUNC7( orientation_t *tag, qhandle_t handle, int startFrame, int endFrame, 
					 float frac, const char *tagName ) {
	mdvTag_t	*start, *end;
	mdvTag_t	start_space, end_space;
	int		i;
	float		frontLerp, backLerp;
	model_t		*model;

	model = FUNC2( handle );
	if ( !model->mdv[0] )
	{
		if(model->type == MOD_MDR)
		{
			start = FUNC1((mdrHeader_t *) model->modelData, startFrame, tagName, &start_space);
			end = FUNC1((mdrHeader_t *) model->modelData, endFrame, tagName, &end_space);
		}
		else if( model->type == MOD_IQM ) {
			return FUNC4( tag, model->modelData,
					startFrame, endFrame,
					frac, tagName );
		} else {
			start = end = NULL;
		}
	}
	else
	{
		start = FUNC3( model->mdv[0], startFrame, tagName );
		end = FUNC3( model->mdv[0], endFrame, tagName );
	}

	if ( !start || !end ) {
		FUNC0( tag->axis );
		FUNC5( tag->origin );
		return qfalse;
	}

	frontLerp = frac;
	backLerp = 1.0f - frac;

	for ( i = 0 ; i < 3 ; i++ ) {
		tag->origin[i] = start->origin[i] * backLerp +  end->origin[i] * frontLerp;
		tag->axis[0][i] = start->axis[0][i] * backLerp +  end->axis[0][i] * frontLerp;
		tag->axis[1][i] = start->axis[1][i] * backLerp +  end->axis[1][i] * frontLerp;
		tag->axis[2][i] = start->axis[2][i] * backLerp +  end->axis[2][i] * frontLerp;
	}
	FUNC6( tag->axis[0] );
	FUNC6( tag->axis[1] );
	FUNC6( tag->axis[2] );
	return qtrue;
}