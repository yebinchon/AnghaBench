
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; char* resetString; char* latchedString; int modificationCount; long hashIndex; struct TYPE_8__* hashPrev; struct TYPE_8__* hashNext; struct TYPE_8__* prev; struct TYPE_8__* next; int * description; int validate; void* string; int integer; int value; int modified; void* name; } ;
typedef TYPE_1__ cvar_t ;


 int CVAR_ROM ;
 int CVAR_SERVER_CREATED ;
 int CVAR_USER_CREATED ;
 int CVAR_VM_CREATED ;
 int Com_DPrintf (char*,char const*,char*,char const*) ;
 int Com_Error (int ,char*) ;
 int Com_Printf (char*,char const*) ;
 void* CopyString (char const*) ;
 TYPE_1__* Cvar_FindVar (char const*) ;
 int Cvar_Set2 (char const*,char*,int ) ;
 char* Cvar_Validate (TYPE_1__*,char const*,int ) ;
 int Cvar_ValidateString (char const*) ;
 int ERR_FATAL ;
 int MAX_CVARS ;
 int Z_Free (char*) ;
 int atof (void*) ;
 int atoi (void*) ;
 int com_errorEntered ;
 TYPE_1__* cvar_indexes ;
 int cvar_modifiedFlags ;
 int cvar_numIndexes ;
 TYPE_1__* cvar_vars ;
 long generateHashValue (char const*) ;
 TYPE_1__** hashTable ;
 int qfalse ;
 int qtrue ;
 scalar_t__ strcmp (char*,char const*) ;

cvar_t *Cvar_Get( const char *var_name, const char *var_value, int flags ) {
 cvar_t *var;
 long hash;
 int index;

 if ( !var_name || ! var_value ) {
  Com_Error( ERR_FATAL, "Cvar_Get: NULL parameter" );
 }

 if ( !Cvar_ValidateString( var_name ) ) {
  Com_Printf("invalid cvar name string: %s\n", var_name );
  var_name = "BADNAME";
 }
 var = Cvar_FindVar (var_name);

 if(var)
 {
  var_value = Cvar_Validate(var, var_value, qfalse);


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



  if(var->flags & CVAR_USER_CREATED)
  {
   var->flags &= ~CVAR_USER_CREATED;
   Z_Free( var->resetString );
   var->resetString = CopyString( var_value );

   if(flags & CVAR_ROM)
   {



    if(var->latchedString)
     Z_Free(var->latchedString);

    var->latchedString = CopyString(var_value);
   }
  }


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


  if ( !var->resetString[0] ) {

   Z_Free( var->resetString );
   var->resetString = CopyString( var_value );
  } else if ( var_value[0] && strcmp( var->resetString, var_value ) ) {
   Com_DPrintf( "Warning: cvar \"%s\" given initial values: \"%s\" and \"%s\"\n",
    var_name, var->resetString, var_value );
  }

  if ( var->latchedString ) {
   char *s;

   s = var->latchedString;
   var->latchedString = ((void*)0);
   Cvar_Set2( var_name, s, qtrue );
   Z_Free( s );
  }



  cvar_modifiedFlags |= flags;

  return var;
 }






 for(index = 0; index < MAX_CVARS; index++)
 {
  if(!cvar_indexes[index].name)
   break;
 }

 if(index >= MAX_CVARS)
 {
  if(!com_errorEntered)
   Com_Error(ERR_FATAL, "Error: Too many cvars, cannot create a new one!");

  return ((void*)0);
 }

 var = &cvar_indexes[index];

 if(index >= cvar_numIndexes)
  cvar_numIndexes = index + 1;

 var->name = CopyString (var_name);
 var->string = CopyString (var_value);
 var->modified = qtrue;
 var->modificationCount = 1;
 var->value = atof (var->string);
 var->integer = atoi(var->string);
 var->resetString = CopyString( var_value );
 var->validate = qfalse;
 var->description = ((void*)0);


 var->next = cvar_vars;
 if(cvar_vars)
  cvar_vars->prev = var;

 var->prev = ((void*)0);
 cvar_vars = var;

 var->flags = flags;

 cvar_modifiedFlags |= var->flags;

 hash = generateHashValue(var_name);
 var->hashIndex = hash;

 var->hashNext = hashTable[hash];
 if(hashTable[hash])
  hashTable[hash]->hashPrev = var;

 var->hashPrev = ((void*)0);
 hashTable[hash] = var;

 return var;
}
