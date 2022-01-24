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
typedef  int /*<<< orphan*/  cpuFeatures_t ;

/* Variables and functions */
 int /*<<< orphan*/  CF_3DNOW ; 
 int /*<<< orphan*/  CF_ALTIVEC ; 
 int /*<<< orphan*/  CF_MMX ; 
 int /*<<< orphan*/  CF_RDTSC ; 
 int /*<<< orphan*/  CF_SSE ; 
 int /*<<< orphan*/  CF_SSE2 ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 

cpuFeatures_t FUNC6( void )
{
	cpuFeatures_t features = 0;

#ifndef DEDICATED
	if( FUNC3( ) )      features |= CF_RDTSC;
	if( FUNC0( ) )      features |= CF_3DNOW;
	if( FUNC2( ) )        features |= CF_MMX;
	if( FUNC4( ) )        features |= CF_SSE;
	if( FUNC5( ) )       features |= CF_SSE2;
	if( FUNC1( ) )    features |= CF_ALTIVEC;
#endif

	return features;
}