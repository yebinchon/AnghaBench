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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,void**) ; 
 int /*<<< orphan*/  FUNC2 (char const*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

void FUNC4( const char *from, const char *to ){
	void    *buffer;
	int length;

	length = FUNC1( from, &buffer );
	FUNC0( to );
	FUNC2( to, buffer, length );
	FUNC3( buffer );
}