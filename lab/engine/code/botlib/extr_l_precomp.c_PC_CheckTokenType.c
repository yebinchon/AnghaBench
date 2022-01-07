
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int type; int subtype; } ;
typedef TYPE_1__ token_t ;
typedef int source_t ;


 int Com_Memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int PC_ReadToken (int *,TYPE_1__*) ;
 int PC_UnreadSourceToken (int *,TYPE_1__*) ;
 int qfalse ;
 int qtrue ;

int PC_CheckTokenType(source_t *source, int type, int subtype, token_t *token)
{
 token_t tok;

 if (!PC_ReadToken(source, &tok)) return qfalse;

 if (tok.type == type &&
   (tok.subtype & subtype) == subtype)
 {
  Com_Memcpy(token, &tok, sizeof(token_t));
  return qtrue;
 }

 PC_UnreadSourceToken(source, &tok);
 return qfalse;
}
