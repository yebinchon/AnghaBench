
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filename; } ;


 int Error (char*,char*,int ,int ) ;
 int GetToken (int ) ;
 int qtrue ;
 TYPE_1__* script ;
 int scriptline ;
 scalar_t__ strcmp (int ,char*) ;
 int token ;

void MatchToken( char *match ) {
 GetToken( qtrue );

 if ( strcmp( token, match ) ) {
  Error( "MatchToken( \"%s\" ) failed at line %i in file %s", match, scriptline, script->filename );
 }
}
