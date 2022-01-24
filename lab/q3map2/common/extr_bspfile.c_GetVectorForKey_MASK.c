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
typedef  double* vec3_t ;
typedef  int /*<<< orphan*/  entity_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,double*,double*,double*) ; 

void    FUNC2( const entity_t *ent, const char *key, vec3_t vec ) {
	const char  *k;
	double v1, v2, v3;

	k = FUNC0( ent, key );

	// scanf into doubles, then assign, so it is vec_t size independent
	v1 = v2 = v3 = 0;
	FUNC1( k, "%lf %lf %lf", &v1, &v2, &v3 );
	vec[0] = v1;
	vec[1] = v2;
	vec[2] = v3;
}