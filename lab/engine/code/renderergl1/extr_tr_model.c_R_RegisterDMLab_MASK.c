#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qhandle_t ;
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  namebuf ;
struct TYPE_5__ {int /*<<< orphan*/  type; int /*<<< orphan*/  index; int /*<<< orphan*/  numLods; } ;
typedef  TYPE_1__ model_t ;
typedef  int /*<<< orphan*/  md3Header_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_6__ {int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*,char const*) ;int /*<<< orphan*/  (* Free ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*,...) ; 
 int /*<<< orphan*/  MAX_QPATH ; 
 int MD3_MAX_LODS ; 
 int /*<<< orphan*/  MOD_BAD ; 
 int /*<<< orphan*/  MOD_MESH ; 
 int /*<<< orphan*/  PRINT_WARNING ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *,char const*,char*) ; 
 scalar_t__ qfalse ; 
 TYPE_2__ ri ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 

qhandle_t FUNC5(const char *name, model_t *mod)
{
	int lod;
	char namebuf[MAX_QPATH + 20];
	md3Header_t *mod_md3;
	qboolean loaded = qfalse;

	for ( lod = 0 ; lod < MD3_MAX_LODS ; ++lod )
	{
		if ( lod != 0 )
			FUNC0(namebuf, sizeof(namebuf), "%s_%d", name, lod);
		else
			FUNC0(namebuf, sizeof(namebuf), "%s", name);

		if ( FUNC1( name, &mod_md3 ) )
		{
			loaded = FUNC2( mod, lod, (byte *)mod_md3, name, "" );
			ri.Free( mod_md3 );
		}

		if ( loaded )
			mod->numLods++;
		else
			break;
	}

	if ( lod > 0 )
	{
		mod->type = MOD_MESH;
		return mod->index;
	}

#ifdef _DEBUG
	ri.Printf(PRINT_WARNING, "R_RegisterDMLab: couldn't load %s\n", name);
#endif

	mod->type = MOD_BAD;
	return 0;
}