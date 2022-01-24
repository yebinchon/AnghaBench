#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* jointParents; float* poseMats; int num_poses; } ;
typedef  TYPE_1__ iqmData_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,float*,int) ; 
 int /*<<< orphan*/  FUNC1 (float*,float*,float,float*) ; 
 int /*<<< orphan*/  FUNC2 (float*,float*,float*) ; 

__attribute__((used)) static void FUNC3( iqmData_t *data, int frame, int oldframe,
			      float backlerp, float *mat ) {
	float	*mat1, *mat2;
	int	*joint = data->jointParents;
	int	i;

	if ( oldframe == frame ) {
		mat1 = data->poseMats + 12 * data->num_poses * frame;
		for( i = 0; i < data->num_poses; i++, joint++ ) {
			if( *joint >= 0 ) {
				FUNC2( mat + 12 * *joint,
						  mat1 + 12*i, mat + 12*i );
			} else {
				FUNC0( mat + 12*i, mat1 + 12*i, 12 * sizeof(float) );
			}
		}
	} else  {
		mat1 = data->poseMats + 12 * data->num_poses * frame;
		mat2 = data->poseMats + 12 * data->num_poses * oldframe;
		
		for( i = 0; i < data->num_poses; i++, joint++ ) {
			if( *joint >= 0 ) {
				float tmpMat[12];
				FUNC1( mat1 + 12*i, mat2 + 12*i,
						   backlerp, tmpMat );
				FUNC2( mat + 12 * *joint,
						  tmpMat, mat + 12*i );
				
			} else {
				FUNC1( mat1 + 12*i, mat2 + 12*i,
						   backlerp, mat + 12*i );
			}
		}
	}
}