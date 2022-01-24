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
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 scalar_t__ FUNC0 (char const*,char) ; 

__attribute__((used)) static qboolean FUNC1( const char *s ) {
	if ( !s ) {
		return qfalse;
	}
	if ( FUNC0( s, '\\' ) ) {
		return qfalse;
	}
	if ( FUNC0( s, '\"' ) ) {
		return qfalse;
	}
	if ( FUNC0( s, ';' ) ) {
		return qfalse;
	}
	return qtrue;
}