#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int clipHandle_t ;
struct TYPE_2__ {int numSubModels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 TYPE_1__ cm ; 

clipHandle_t	FUNC1( int index ) {
	if ( index < 0 || index >= cm.numSubModels ) {
		FUNC0 (ERR_DROP, "CM_InlineModel: bad number");
	}
	return index;
}