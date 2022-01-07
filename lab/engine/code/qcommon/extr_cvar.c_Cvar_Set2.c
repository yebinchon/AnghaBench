
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_7__ {char* resetString; int flags; double value; int * string; int integer; int modificationCount; void* modified; int * latchedString; } ;
typedef TYPE_1__ cvar_t ;
struct TYPE_8__ {int integer; } ;


 int CVAR_CHEAT ;
 int CVAR_INIT ;
 int CVAR_LATCH ;
 int CVAR_ROM ;
 int CVAR_USER_CREATED ;
 int Com_Printf (char*,char const*) ;
 void* CopyString (char const*) ;
 TYPE_1__* Cvar_FindVar (char const*) ;
 TYPE_1__* Cvar_Get (char const*,char const*,int ) ;
 char* Cvar_Validate (TYPE_1__*,char const*,void*) ;
 int Cvar_ValidateString (char const*) ;
 double FLT_MAX ;
 int Z_Free (int *) ;
 double atof (int *) ;
 int atoi (int *) ;
 TYPE_2__* cvar_cheats ;
 int cvar_modifiedFlags ;
 void* qtrue ;
 scalar_t__ strcmp (char const*,int *) ;
 char* var_value ;

cvar_t *Cvar_Set2( const char *var_name, const char *value, qboolean force ) {
 cvar_t *var;
 double value_d;



 if ( !Cvar_ValidateString( var_name ) ) {
  Com_Printf("invalid cvar name string: %s\n", var_name );
  var_name = "BADNAME";
 }
 var = Cvar_FindVar (var_name);
 if (!var) {
  if ( !value ) {
   return ((void*)0);
  }

  if ( !force ) {
   return Cvar_Get( var_name, value, CVAR_USER_CREATED );
  } else {
   return Cvar_Get (var_name, value, 0);
  }
 }

 if (!value ) {
  value = var->resetString;
 }

 value = Cvar_Validate(var, value, qtrue);

 if((var->flags & CVAR_LATCH) && var->latchedString)
 {
  if(!strcmp(value, var->string))
  {
   Z_Free(var->latchedString);
   var->latchedString = ((void*)0);
   return var;
  }

  if(!strcmp(value, var->latchedString))
   return var;
 }
 else if(!strcmp(value, var->string))
  return var;


 cvar_modifiedFlags |= var->flags;

 if (!force)
 {
  if (var->flags & CVAR_ROM)
  {
   Com_Printf ("%s is read only.\n", var_name);
   return var;
  }

  if (var->flags & CVAR_INIT)
  {
   Com_Printf ("%s is write protected.\n", var_name);
   return var;
  }

  if ((var->flags & CVAR_CHEAT) && !cvar_cheats->integer)
  {
   Com_Printf ("%s is cheat protected.\n", var_name);
   return var;
  }

  if (var->flags & CVAR_LATCH)
  {
   if (var->latchedString)
   {
    if (strcmp(value, var->latchedString) == 0)
     return var;
    Z_Free (var->latchedString);
   }
   else
   {
    if (strcmp(value, var->string) == 0)
     return var;
   }

   Com_Printf ("%s will be changed upon restarting.\n", var_name);
   var->latchedString = CopyString(value);
   var->modified = qtrue;
   var->modificationCount++;
   return var;
  }
 }
 else
 {
  if (var->latchedString)
  {
   Z_Free (var->latchedString);
   var->latchedString = ((void*)0);
  }
 }

 if (!strcmp(value, var->string))
  return var;

 var->modified = qtrue;
 var->modificationCount++;

 Z_Free (var->string);

 var->string = CopyString(value);
 value_d = atof(var->string);


 if (-FLT_MAX <= value_d && value_d <= FLT_MAX) {
  var->value = value_d;
 }

 var->integer = atoi (var->string);

 return var;
}
