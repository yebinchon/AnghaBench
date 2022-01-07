
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 char const* lineBuffer ;
 int lineParseOffset ;
 int qfalse ;
 int qtrue ;
 int strncpy (scalar_t__*,char const*,int) ;
 scalar_t__* token ;

__attribute__((used)) static qboolean Parse( void ) {

 const char *p, *q;



 *token = 0;


 for (p = lineBuffer + lineParseOffset; *p && (*p <= ' '); p++) ;



 if ((*p == ';') || (*p == 0)) {
  lineParseOffset = p - lineBuffer;
  return qfalse;
 }

 q = p;

 for ( ; *p > 32; p++) ;

 strncpy(token, q, p - q);
 token[p - q] = 0;

 lineParseOffset = p - lineBuffer;

 return qtrue;
}
