
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int floatvalue; int intvalue; int subtype; int type; int string; } ;
typedef TYPE_1__ token_t ;
struct TYPE_6__ {int string; int type; int floatvalue; int intvalue; int subtype; } ;
typedef TYPE_2__ pc_token_t ;


 int MAX_SOURCEFILES ;
 int PC_ReadToken (int ,TYPE_1__*) ;
 int StripDoubleQuotes (int ) ;
 int TT_STRING ;
 int * sourceFiles ;
 int strcpy (int ,int ) ;

int PC_ReadTokenHandle(int handle, pc_token_t *pc_token)
{
 token_t token;
 int ret;

 if (handle < 1 || handle >= MAX_SOURCEFILES)
  return 0;
 if (!sourceFiles[handle])
  return 0;

 ret = PC_ReadToken(sourceFiles[handle], &token);
 strcpy(pc_token->string, token.string);
 pc_token->type = token.type;
 pc_token->subtype = token.subtype;
 pc_token->intvalue = token.intvalue;
 pc_token->floatvalue = token.floatvalue;
 if (pc_token->type == TT_STRING)
  StripDoubleQuotes(pc_token->string);
 return ret;
}
