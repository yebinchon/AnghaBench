
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ type; float string; struct TYPE_14__* next; } ;
typedef TYPE_1__ token_t ;
struct TYPE_15__ {int defines; int definehash; } ;
typedef TYPE_2__ source_t ;
typedef int define_t ;


 int Log_Write (char*,...) ;
 TYPE_1__* PC_CopyToken (TYPE_1__*) ;
 int PC_EvaluateTokens (TYPE_2__*,TYPE_1__*,long*,float*,int) ;
 int PC_ExpandDefineIntoSource (TYPE_2__*,TYPE_1__*,int *) ;
 int * PC_FindDefine (int ,float) ;
 int * PC_FindHashedDefine (int ,float) ;
 int PC_FreeToken (TYPE_1__*) ;
 scalar_t__ PC_ReadLine (TYPE_2__*,TYPE_1__*) ;
 int SourceError (TYPE_2__*,char*,...) ;
 scalar_t__ TT_NAME ;
 scalar_t__ TT_NUMBER ;
 scalar_t__ TT_PUNCTUATION ;
 int qfalse ;
 int qtrue ;
 int strcmp (float,char*) ;

int PC_Evaluate(source_t *source, signed long int *intvalue,
            float *floatvalue, int integer)
{
 token_t token, *firsttoken, *lasttoken;
 token_t *t, *nexttoken;
 define_t *define;
 int defined = qfalse;

 if (intvalue) *intvalue = 0;
 if (floatvalue) *floatvalue = 0;

 if (!PC_ReadLine(source, &token))
 {
  SourceError(source, "no value after #if/#elif");
  return qfalse;
 }
 firsttoken = ((void*)0);
 lasttoken = ((void*)0);
 do
 {

  if (token.type == TT_NAME)
  {
   if (defined)
   {
    defined = qfalse;
    t = PC_CopyToken(&token);
    t->next = ((void*)0);
    if (lasttoken) lasttoken->next = t;
    else firsttoken = t;
    lasttoken = t;
   }
   else if (!strcmp(token.string, "defined"))
   {
    defined = qtrue;
    t = PC_CopyToken(&token);
    t->next = ((void*)0);
    if (lasttoken) lasttoken->next = t;
    else firsttoken = t;
    lasttoken = t;
   }
   else
   {




    define = PC_FindDefine(source->defines, token.string);

    if (!define)
    {
     SourceError(source, "can't evaluate %s, not defined", token.string);
     return qfalse;
    }
    if (!PC_ExpandDefineIntoSource(source, &token, define)) return qfalse;
   }
  }

  else if (token.type == TT_NUMBER || token.type == TT_PUNCTUATION)
  {
   t = PC_CopyToken(&token);
   t->next = ((void*)0);
   if (lasttoken) lasttoken->next = t;
   else firsttoken = t;
   lasttoken = t;
  }
  else
  {
   SourceError(source, "can't evaluate %s", token.string);
   return qfalse;
  }
 } while(PC_ReadLine(source, &token));

 if (!PC_EvaluateTokens(source, firsttoken, intvalue, floatvalue, integer)) return qfalse;




 for (t = firsttoken; t; t = nexttoken)
 {



  nexttoken = t->next;
  PC_FreeToken(t);
 }





 return qtrue;
}
