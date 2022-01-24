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

/* Variables and functions */
 int /*<<< orphan*/  CG_GETCURRENTSNAPSHOTNUMBER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int*) ; 

void		FUNC1( int *snapshotNumber, int *serverTime ) {
	FUNC0( CG_GETCURRENTSNAPSHOTNUMBER, snapshotNumber, serverTime );
}