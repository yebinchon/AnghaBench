#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int deformation; } ;
typedef  TYPE_2__ deformStage_t ;
struct TYPE_14__ {int numDeforms; TYPE_2__* deforms; } ;
struct TYPE_10__ {int /*<<< orphan*/ * text; } ;
struct TYPE_13__ {TYPE_1__ refdef; } ;
struct TYPE_12__ {TYPE_5__* shader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  DEFORM_AUTOSPRITE 143 
#define  DEFORM_AUTOSPRITE2 142 
#define  DEFORM_BULGE 141 
#define  DEFORM_MOVE 140 
#define  DEFORM_NONE 139 
#define  DEFORM_NORMALS 138 
#define  DEFORM_PROJECTION_SHADOW 137 
#define  DEFORM_TEXT0 136 
#define  DEFORM_TEXT1 135 
#define  DEFORM_TEXT2 134 
#define  DEFORM_TEXT3 133 
#define  DEFORM_TEXT4 132 
#define  DEFORM_TEXT5 131 
#define  DEFORM_TEXT6 130 
#define  DEFORM_TEXT7 129 
#define  DEFORM_WAVE 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 TYPE_4__ backEnd ; 
 TYPE_3__ tess ; 

void FUNC9( void ) {
	int		i;
	deformStage_t	*ds;

	if(!FUNC8(tess.shader))
	{
		// we don't need the following CPU deforms
		return;
	}

	for ( i = 0 ; i < tess.shader->numDeforms ; i++ ) {
		ds = &tess.shader->deforms[ i ];

		switch ( ds->deformation ) {
        case DEFORM_NONE:
            break;
		case DEFORM_NORMALS:
			FUNC4( ds );
			break;
		case DEFORM_WAVE:
			FUNC5( ds );
			break;
		case DEFORM_BULGE:
			FUNC3( ds );
			break;
		case DEFORM_MOVE:
			FUNC6( ds );
			break;
		case DEFORM_PROJECTION_SHADOW:
			FUNC7();
			break;
		case DEFORM_AUTOSPRITE:
			FUNC1();
			break;
		case DEFORM_AUTOSPRITE2:
			FUNC0();
			break;
		case DEFORM_TEXT0:
		case DEFORM_TEXT1:
		case DEFORM_TEXT2:
		case DEFORM_TEXT3:
		case DEFORM_TEXT4:
		case DEFORM_TEXT5:
		case DEFORM_TEXT6:
		case DEFORM_TEXT7:
			FUNC2( backEnd.refdef.text[ds->deformation - DEFORM_TEXT0] );
			break;
		}
	}
}