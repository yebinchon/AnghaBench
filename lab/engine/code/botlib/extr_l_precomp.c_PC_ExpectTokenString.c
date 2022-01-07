
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int string; } ;
typedef TYPE_1__ token_t ;
typedef int source_t ;


 int PC_ReadToken (int *,TYPE_1__*) ;
 int SourceError (int *,char*,char*,...) ;
 int qfalse ;
 int qtrue ;
 scalar_t__ strcmp (int ,char*) ;

int PC_ExpectTokenString(source_t *source, char *string)
{
 token_t token;

 if (!PC_ReadToken(source, &token))
 {
  SourceError(source, "couldn't find expected %s", string);
  return qfalse;
 }

 if (strcmp(token.string, string))
 {
  SourceError(source, "expected %s, found %s", string, token.string);
  return qfalse;
 }
 return qtrue;
}
