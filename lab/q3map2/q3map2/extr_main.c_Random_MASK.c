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
typedef  int vec_t ;

/* Variables and functions */
 int RAND_MAX ; 
 scalar_t__ FUNC0 () ; 

vec_t FUNC1( void ){
	return (vec_t) FUNC0() / RAND_MAX;
}