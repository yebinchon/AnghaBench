
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ clearSolid; int contents; int surfaceFlags; int name; } ;
struct TYPE_6__ {int contentFlags; int surfaceFlags; } ;
struct TYPE_5__ {int contents; } ;


 int ARRAY_LEN (TYPE_3__*) ;
 char* COM_ParseExt (char**,int ) ;
 int CONTENTS_SOLID ;
 int Q_stricmp (char*,int ) ;
 TYPE_3__* infoParms ;
 int qfalse ;
 TYPE_2__ shader ;
 TYPE_1__* si ;

__attribute__((used)) static void ParseSurfaceParm( char **text ) {
 char *token;
 int numInfoParms = ARRAY_LEN( infoParms );
 int i;

 token = COM_ParseExt( text, qfalse );
 for ( i = 0 ; i < numInfoParms ; i++ ) {
  if ( !Q_stricmp( token, infoParms[i].name ) ) {
   shader.surfaceFlags |= infoParms[i].surfaceFlags;
   shader.contentFlags |= infoParms[i].contents;





   break;
  }
 }
}
