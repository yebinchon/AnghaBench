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
typedef  int /*<<< orphan*/  fileHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  CG_FS_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 

void	FUNC1( void *buffer, int len, fileHandle_t f ) {
	FUNC0( CG_FS_READ, buffer, len, f );
}