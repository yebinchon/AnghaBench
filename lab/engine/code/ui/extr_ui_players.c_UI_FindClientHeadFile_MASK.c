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
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,char const*,char const*,char const*,char const*,...) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

__attribute__((used)) static qboolean	FUNC2( char *filename, int length, const char *teamName, const char *headModelName, const char *headSkinName, const char *base, const char *ext ) {
	char *team, *headsFolder;
	int i;

	team = "default";

	if ( headModelName[0] == '*' ) {
		headsFolder = "heads/";
		headModelName++;
	}
	else {
		headsFolder = "";
	}
	while(1) {
		for ( i = 0; i < 2; i++ ) {
			if ( i == 0 && teamName && *teamName ) {
				FUNC0( filename, length, "models/players/%s%s/%s/%s%s_%s.%s", headsFolder, headModelName, headSkinName, teamName, base, team, ext );
			}
			else {
				FUNC0( filename, length, "models/players/%s%s/%s/%s_%s.%s", headsFolder, headModelName, headSkinName, base, team, ext );
			}
			if ( FUNC1( filename ) ) {
				return qtrue;
			}
			if ( i == 0 && teamName && *teamName ) {
				FUNC0( filename, length, "models/players/%s%s/%s%s_%s.%s", headsFolder, headModelName, teamName, base, headSkinName, ext );
			}
			else {
				FUNC0( filename, length, "models/players/%s%s/%s_%s.%s", headsFolder, headModelName, base, headSkinName, ext );
			}
			if ( FUNC1( filename ) ) {
				return qtrue;
			}
			if ( !teamName || !*teamName ) {
				break;
			}
		}
		// if tried the heads folder first
		if ( headsFolder[0] ) {
			break;
		}
		headsFolder = "heads/";
	}

	return qfalse;
}