#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int flags; char* resetString; char* latchedString; int modificationCount; long hashIndex; struct TYPE_8__* hashPrev; struct TYPE_8__* hashNext; struct TYPE_8__* prev; struct TYPE_8__* next; int /*<<< orphan*/ * description; int /*<<< orphan*/  validate; void* string; int /*<<< orphan*/  integer; int /*<<< orphan*/  value; int /*<<< orphan*/  modified; void* name; } ;
typedef  TYPE_1__ cvar_t ;

/* Variables and functions */
 int CVAR_ROM ; 
 int CVAR_SERVER_CREATED ; 
 int CVAR_USER_CREATED ; 
 int CVAR_VM_CREATED ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 void* FUNC3 (char const*) ; 
 TYPE_1__* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int MAX_CVARS ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  com_errorEntered ; 
 TYPE_1__* cvar_indexes ; 
 int cvar_modifiedFlags ; 
 int cvar_numIndexes ; 
 TYPE_1__* cvar_vars ; 
 long FUNC11 (char const*) ; 
 TYPE_1__** hashTable ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 scalar_t__ FUNC12 (char*,char const*) ; 

cvar_t *FUNC13( const char *var_name, const char *var_value, int flags ) {
	cvar_t	*var;
	long	hash;
	int	index;

	if ( !var_name || ! var_value ) {
		FUNC1( ERR_FATAL, "Cvar_Get: NULL parameter" );
	}

	if ( !FUNC7( var_name ) ) {
		FUNC2("invalid cvar name string: %s\n", var_name );
		var_name = "BADNAME";
	}

#if 0		// FIXME: values with backslash happen
	if ( !Cvar_ValidateString( var_value ) ) {
		Com_Printf("invalid cvar value string: %s\n", var_value );
		var_value = "BADVALUE";
	}
#endif

	var = FUNC4 (var_name);
	
	if(var)
	{
		var_value = FUNC6(var, var_value, qfalse);

		// Make sure the game code cannot mark engine-added variables as gamecode vars
		if(var->flags & CVAR_VM_CREATED)
		{
			if(!(flags & CVAR_VM_CREATED))
				var->flags &= ~CVAR_VM_CREATED;
		}
		else if (!(var->flags & CVAR_USER_CREATED))
		{
			if(flags & CVAR_VM_CREATED)
				flags &= ~CVAR_VM_CREATED;
		}

		// if the C code is now specifying a variable that the user already
		// set a value for, take the new value as the reset value
		if(var->flags & CVAR_USER_CREATED)
		{
			var->flags &= ~CVAR_USER_CREATED;
			FUNC8( var->resetString );
			var->resetString = FUNC3( var_value );

			if(flags & CVAR_ROM)
			{
				// this variable was set by the user,
				// so force it to value given by the engine.

				if(var->latchedString)
					FUNC8(var->latchedString);
				
				var->latchedString = FUNC3(var_value);
			}
		}
		
		// Make sure servers cannot mark engine-added variables as SERVER_CREATED
		if(var->flags & CVAR_SERVER_CREATED)
		{
			if(!(flags & CVAR_SERVER_CREATED))
				var->flags &= ~CVAR_SERVER_CREATED;
		}
		else
		{
			if(flags & CVAR_SERVER_CREATED)
				flags &= ~CVAR_SERVER_CREATED;
		}
		
		var->flags |= flags;

		// only allow one non-empty reset string without a warning
		if ( !var->resetString[0] ) {
			// we don't have a reset string yet
			FUNC8( var->resetString );
			var->resetString = FUNC3( var_value );
		} else if ( var_value[0] && FUNC12( var->resetString, var_value ) ) {
			FUNC0( "Warning: cvar \"%s\" given initial values: \"%s\" and \"%s\"\n",
				var_name, var->resetString, var_value );
		}
		// if we have a latched string, take that value now
		if ( var->latchedString ) {
			char *s;

			s = var->latchedString;
			var->latchedString = NULL;	// otherwise cvar_set2 would free it
			FUNC5( var_name, s, qtrue );
			FUNC8( s );
		}

		// ZOID--needs to be set so that cvars the game sets as 
		// SERVERINFO get sent to clients
		cvar_modifiedFlags |= flags;

		return var;
	}

	//
	// allocate a new cvar
	//

	// find a free cvar
	for(index = 0; index < MAX_CVARS; index++)
	{
		if(!cvar_indexes[index].name)
			break;
	}

	if(index >= MAX_CVARS)
	{
		if(!com_errorEntered)
			FUNC1(ERR_FATAL, "Error: Too many cvars, cannot create a new one!");

		return NULL;
	}
	
	var = &cvar_indexes[index];
	
	if(index >= cvar_numIndexes)
		cvar_numIndexes = index + 1;
		
	var->name = FUNC3 (var_name);
	var->string = FUNC3 (var_value);
	var->modified = qtrue;
	var->modificationCount = 1;
	var->value = FUNC9 (var->string);
	var->integer = FUNC10(var->string);
	var->resetString = FUNC3( var_value );
	var->validate = qfalse;
	var->description = NULL;

	// link the variable in
	var->next = cvar_vars;
	if(cvar_vars)
		cvar_vars->prev = var;

	var->prev = NULL;
	cvar_vars = var;

	var->flags = flags;
	// note what types of cvars have been modified (userinfo, archive, serverinfo, systeminfo)
	cvar_modifiedFlags |= var->flags;

	hash = FUNC11(var_name);
	var->hashIndex = hash;

	var->hashNext = hashTable[hash];
	if(hashTable[hash])
		hashTable[hash]->hashPrev = var;

	var->hashPrev = NULL;
	hashTable[hash] = var;

	return var;
}