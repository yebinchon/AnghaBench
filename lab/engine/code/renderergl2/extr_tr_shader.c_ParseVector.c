
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int (* Printf ) (int ,char*,int ) ;} ;
struct TYPE_3__ {int name; } ;


 char* COM_ParseExt (char**,int ) ;
 int PRINT_WARNING ;
 float atof (char*) ;
 int qfalse ;
 int qtrue ;
 TYPE_2__ ri ;
 TYPE_1__ shader ;
 scalar_t__ strcmp (char*,char*) ;
 int stub1 (int ,char*,int ) ;
 int stub2 (int ,char*,int ) ;
 int stub3 (int ,char*,int ) ;

__attribute__((used)) static qboolean ParseVector( char **text, int count, float *v ) {
 char *token;
 int i;


 token = COM_ParseExt( text, qfalse );
 if ( strcmp( token, "(" ) ) {
  ri.Printf( PRINT_WARNING, "WARNING: missing parenthesis in shader '%s'\n", shader.name );
  return qfalse;
 }

 for ( i = 0 ; i < count ; i++ ) {
  token = COM_ParseExt( text, qfalse );
  if ( !token[0] ) {
   ri.Printf( PRINT_WARNING, "WARNING: missing vector element in shader '%s'\n", shader.name );
   return qfalse;
  }
  v[i] = atof( token );
 }

 token = COM_ParseExt( text, qfalse );
 if ( strcmp( token, ")" ) ) {
  ri.Printf( PRINT_WARNING, "WARNING: missing parenthesis in shader '%s'\n", shader.name );
  return qfalse;
 }

 return qtrue;
}
