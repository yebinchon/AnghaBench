
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sfxHandle_t ;
struct TYPE_3__ {int * sounds; } ;
typedef TYPE_1__ clientInfo_t ;
struct TYPE_4__ {TYPE_1__* clientinfo; } ;


 int CG_Error (char*,char const*) ;
 int MAX_CLIENTS ;
 int MAX_CUSTOM_SOUNDS ;
 scalar_t__* cg_customSoundNames ;
 TYPE_2__ cgs ;
 int qfalse ;
 int strcmp (char const*,scalar_t__) ;
 int trap_S_RegisterSound (char const*,int ) ;

sfxHandle_t CG_CustomSound( int clientNum, const char *soundName ) {
 clientInfo_t *ci;
 int i;

 if ( soundName[0] != '*' ) {
  return trap_S_RegisterSound( soundName, qfalse );
 }

 if ( clientNum < 0 || clientNum >= MAX_CLIENTS ) {
  clientNum = 0;
 }
 ci = &cgs.clientinfo[ clientNum ];

 for ( i = 0 ; i < MAX_CUSTOM_SOUNDS && cg_customSoundNames[i] ; i++ ) {
  if ( !strcmp( soundName, cg_customSoundNames[i] ) ) {
   return ci->sounds[i];
  }
 }

 CG_Error( "Unknown custom sound: %s", soundName );
 return 0;
}
