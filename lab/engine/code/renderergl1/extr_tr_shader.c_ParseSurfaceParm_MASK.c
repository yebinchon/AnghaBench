#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ clearSolid; int /*<<< orphan*/  contents; int /*<<< orphan*/  surfaceFlags; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int /*<<< orphan*/  contentFlags; int /*<<< orphan*/  surfaceFlags; } ;
struct TYPE_5__ {int /*<<< orphan*/  contents; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 char* FUNC1 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONTENTS_SOLID ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* infoParms ; 
 int /*<<< orphan*/  qfalse ; 
 TYPE_2__ shader ; 
 TYPE_1__* si ; 

__attribute__((used)) static void FUNC3( char **text ) {
	char	*token;
	int		numInfoParms = FUNC0( infoParms );
	int		i;

	token = FUNC1( text, qfalse );
	for ( i = 0 ; i < numInfoParms ; i++ ) {
		if ( !FUNC2( token, infoParms[i].name ) ) {
			shader.surfaceFlags |= infoParms[i].surfaceFlags;
			shader.contentFlags |= infoParms[i].contents;
#if 0
			if ( infoParms[i].clearSolid ) {
				si->contents &= ~CONTENTS_SOLID;
			}
#endif
			break;
		}
	}
}