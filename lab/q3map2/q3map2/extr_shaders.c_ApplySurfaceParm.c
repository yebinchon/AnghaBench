
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int contentFlagsClear; int contentFlags; int surfaceFlagsClear; int surfaceFlags; int compileFlagsClear; int compileFlags; int * name; } ;
typedef TYPE_1__ surfaceParm_t ;
typedef int qboolean ;
struct TYPE_5__ {TYPE_1__* surfaceParms; } ;


 int Q_stricmp (char*,int *) ;
 TYPE_1__* custSurfaceParms ;
 TYPE_2__* game ;
 int numCustSurfaceParms ;
 int qfalse ;
 int qtrue ;

qboolean ApplySurfaceParm( char *name, int *contentFlags, int *surfaceFlags, int *compileFlags ){
 int i, fake;
 surfaceParm_t *sp;



 if ( name == ((void*)0) ) {
  name = "";
 }
 if ( contentFlags == ((void*)0) ) {
  contentFlags = &fake;
 }
 if ( surfaceFlags == ((void*)0) ) {
  surfaceFlags = &fake;
 }
 if ( compileFlags == ((void*)0) ) {
  compileFlags = &fake;
 }


 sp = game->surfaceParms;
 while ( sp->name != ((void*)0) )
 {

  if ( !Q_stricmp( name, sp->name ) ) {

   *contentFlags &= ~( sp->contentFlagsClear );
   *contentFlags |= sp->contentFlags;
   *surfaceFlags &= ~( sp->surfaceFlagsClear );
   *surfaceFlags |= sp->surfaceFlags;
   *compileFlags &= ~( sp->compileFlagsClear );
   *compileFlags |= sp->compileFlags;


   return qtrue;
  }


  sp++;
 }


 for ( i = 0; i < numCustSurfaceParms; i++ )
 {

  sp = &custSurfaceParms[ i ];


  if ( !Q_stricmp( name, sp->name ) ) {

   *contentFlags &= ~( sp->contentFlagsClear );
   *contentFlags |= sp->contentFlags;
   *surfaceFlags &= ~( sp->surfaceFlagsClear );
   *surfaceFlags |= sp->surfaceFlags;
   *compileFlags &= ~( sp->compileFlagsClear );
   *compileFlags |= sp->compileFlags;


   return qtrue;
  }
 }


 return qfalse;
}
