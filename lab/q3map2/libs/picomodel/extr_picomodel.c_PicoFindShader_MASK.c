#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ picoShader_t ;
struct TYPE_6__ {int numShaders; TYPE_1__** shader; } ;
typedef  TYPE_2__ picoModel_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 

picoShader_t *FUNC2( picoModel_t *model, char *name, int caseSensitive ){
	int i;

	/* sanity checks */
	if ( model == NULL || name == NULL ) { /* sea: null name fix */
		return NULL;
	}

	/* walk list */
	for ( i = 0; i < model->numShaders; i++ )
	{
		/* skip null shaders or shaders with null names */
		if ( model->shader[ i ] == NULL ||
			 model->shader[ i ]->name == NULL ) {
			continue;
		}

		/* compare the shader name with name we're looking for */
		if ( caseSensitive ) {
			if ( !FUNC1( name, model->shader[ i ]->name ) ) {
				return model->shader[ i ];
			}
		}
		else if ( !FUNC0( name, model->shader[ i ]->name ) ) {
			return model->shader[ i ];
		}
	}

	/* named shader not found */
	return NULL;
}