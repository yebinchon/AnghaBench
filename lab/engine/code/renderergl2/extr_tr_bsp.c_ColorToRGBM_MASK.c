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
typedef  int* vec3_t ;

/* Variables and functions */
 float FUNC0 (float,float,float) ; 
 float FUNC1 (float,int) ; 
 int /*<<< orphan*/  FUNC2 (int* const,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,float,int*) ; 
 scalar_t__ FUNC4 (float) ; 

void FUNC5(const vec3_t color, unsigned char rgbm[4])
{
	vec3_t          sample;
	float			maxComponent;

	FUNC2(color, sample);

	maxComponent = FUNC1(sample[0], sample[1]);
	maxComponent = FUNC1(maxComponent, sample[2]);
	maxComponent = FUNC0(maxComponent, 1.0f/255.0f, 1.0f);

	rgbm[3] = (unsigned char) FUNC4(maxComponent * 255.0f);
	maxComponent = 255.0f / rgbm[3];

	FUNC3(sample, maxComponent, sample);

	rgbm[0] = (unsigned char) (sample[0] * 255);
	rgbm[1] = (unsigned char) (sample[1] * 255);
	rgbm[2] = (unsigned char) (sample[2] * 255);
}