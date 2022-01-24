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
 int BG_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int bg_buffer_idx ; 
 char* bg_string_buffer ; 
 int FUNC2 (char const*) ; 

char* FUNC3( const char* str ) {
	char *ptr;
	int len = FUNC2(str) + 1;
	if ( bg_buffer_idx + len > BG_BUFFERSIZE ) {
		FUNC0( ERR_DROP, "Failed to Allocate new string!" );
	}
	ptr = &bg_string_buffer[bg_buffer_idx];
	FUNC1( ptr, str, len );

	bg_buffer_idx += len;
	return ptr;
}