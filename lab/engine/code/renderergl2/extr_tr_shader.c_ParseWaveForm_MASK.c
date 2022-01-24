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
struct TYPE_5__ {void* frequency; void* phase; void* amplitude; void* base; int /*<<< orphan*/  func; } ;
typedef  TYPE_1__ waveForm_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 char* FUNC0 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  PRINT_WARNING ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  qfalse ; 
 TYPE_3__ ri ; 
 TYPE_2__ shader ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8( char **text, waveForm_t *wave )
{
	char *token;

	token = FUNC0( text, qfalse );
	if ( token[0] == 0 )
	{
		ri.Printf( PRINT_WARNING, "WARNING: missing waveform parm in shader '%s'\n", shader.name );
		return;
	}
	wave->func = FUNC1( token );

	// BASE, AMP, PHASE, FREQ
	token = FUNC0( text, qfalse );
	if ( token[0] == 0 )
	{
		ri.Printf( PRINT_WARNING, "WARNING: missing waveform parm in shader '%s'\n", shader.name );
		return;
	}
	wave->base = FUNC2( token );

	token = FUNC0( text, qfalse );
	if ( token[0] == 0 )
	{
		ri.Printf( PRINT_WARNING, "WARNING: missing waveform parm in shader '%s'\n", shader.name );
		return;
	}
	wave->amplitude = FUNC2( token );

	token = FUNC0( text, qfalse );
	if ( token[0] == 0 )
	{
		ri.Printf( PRINT_WARNING, "WARNING: missing waveform parm in shader '%s'\n", shader.name );
		return;
	}
	wave->phase = FUNC2( token );

	token = FUNC0( text, qfalse );
	if ( token[0] == 0 )
	{
		ri.Printf( PRINT_WARNING, "WARNING: missing waveform parm in shader '%s'\n", shader.name );
		return;
	}
	wave->frequency = FUNC2( token );
}