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
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 void* endofscript ; 
 void* qfalse ; 
 int /*<<< orphan*/  script ; 
 int /*<<< orphan*/  scriptstack ; 
 void* tokenready ; 

void FUNC1( const char *filename, int index ){
	script = scriptstack;
	FUNC0( filename, index );

	endofscript = qfalse;
	tokenready = qfalse;
}