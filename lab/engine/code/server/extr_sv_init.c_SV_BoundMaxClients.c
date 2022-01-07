
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int integer; int modified; } ;


 int Cvar_Get (char*,char*,int ) ;
 int Cvar_Set (char*,int ) ;
 int MAX_CLIENTS ;
 int qfalse ;
 TYPE_1__* sv_maxclients ;
 int va (char*,int) ;

__attribute__((used)) static void SV_BoundMaxClients( int minimum ) {

 Cvar_Get( "sv_maxclients", "8", 0 );

 sv_maxclients->modified = qfalse;

 if ( sv_maxclients->integer < minimum ) {
  Cvar_Set( "sv_maxclients", va("%i", minimum) );
 } else if ( sv_maxclients->integer > MAX_CLIENTS ) {
  Cvar_Set( "sv_maxclients", va("%i", MAX_CLIENTS) );
 }
}
