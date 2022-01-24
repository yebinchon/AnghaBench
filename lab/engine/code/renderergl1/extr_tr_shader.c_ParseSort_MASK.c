#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  sort; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 char* FUNC0 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRINT_WARNING ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  SS_BANNER ; 
 int /*<<< orphan*/  SS_BLEND1 ; 
 int /*<<< orphan*/  SS_DECAL ; 
 int /*<<< orphan*/  SS_ENVIRONMENT ; 
 int /*<<< orphan*/  SS_NEAREST ; 
 int /*<<< orphan*/  SS_OPAQUE ; 
 int /*<<< orphan*/  SS_PORTAL ; 
 int /*<<< orphan*/  SS_SEE_THROUGH ; 
 int /*<<< orphan*/  SS_UNDERWATER ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  qfalse ; 
 TYPE_2__ ri ; 
 TYPE_1__ shader ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC4( char **text ) {
	char	*token;

	token = FUNC0( text, qfalse );
	if ( token[0] == 0 ) {
		ri.Printf( PRINT_WARNING, "WARNING: missing sort parameter in shader '%s'\n", shader.name );
		return;
	}

	if ( !FUNC1( token, "portal" ) ) {
		shader.sort = SS_PORTAL;
	} else if ( !FUNC1( token, "sky" ) ) {
		shader.sort = SS_ENVIRONMENT;
	} else if ( !FUNC1( token, "opaque" ) ) {
		shader.sort = SS_OPAQUE;
	}else if ( !FUNC1( token, "decal" ) ) {
		shader.sort = SS_DECAL;
	} else if ( !FUNC1( token, "seeThrough" ) ) {
		shader.sort = SS_SEE_THROUGH;
	} else if ( !FUNC1( token, "banner" ) ) {
		shader.sort = SS_BANNER;
	} else if ( !FUNC1( token, "additive" ) ) {
		shader.sort = SS_BLEND1;
	} else if ( !FUNC1( token, "nearest" ) ) {
		shader.sort = SS_NEAREST;
	} else if ( !FUNC1( token, "underwater" ) ) {
		shader.sort = SS_UNDERWATER;
	} else {
		shader.sort = FUNC2( token );
	}
}