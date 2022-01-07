
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int weapon_t ;
struct TYPE_5__ {int currentWeapon; int realWeapon; int flashDlightColor; void* flashModel; void* barrelModel; void* weaponModel; } ;
typedef TYPE_1__ playerInfo_t ;
typedef int path ;
struct TYPE_6__ {scalar_t__ giType; int giTag; char** world_model; scalar_t__ classname; } ;
typedef TYPE_2__ gitem_t ;


 int COM_StripExtension (char*,char*,int) ;
 scalar_t__ IT_WEAPON ;
 int MAKERGB (int ,int,int,int) ;
 int MAX_QPATH ;
 int Q_strcat (char*,int,char*) ;






 int WP_NONE ;




 TYPE_2__* bg_itemlist ;
 void* trap_R_RegisterModel (char*) ;

__attribute__((used)) static void UI_PlayerInfo_SetWeapon( playerInfo_t *pi, weapon_t weaponNum ) {
 gitem_t * item;
 char path[MAX_QPATH];

 pi->currentWeapon = weaponNum;
tryagain:
 pi->realWeapon = weaponNum;
 pi->weaponModel = 0;
 pi->barrelModel = 0;
 pi->flashModel = 0;

 if ( weaponNum == WP_NONE ) {
  return;
 }

 for ( item = bg_itemlist + 1; item->classname ; item++ ) {
  if ( item->giType != IT_WEAPON ) {
   continue;
  }
  if ( item->giTag == weaponNum ) {
   break;
  }
 }

 if ( item->classname ) {
  pi->weaponModel = trap_R_RegisterModel( item->world_model[0] );
 }

 if( pi->weaponModel == 0 ) {
  if( weaponNum == 132 ) {
   weaponNum = WP_NONE;
   goto tryagain;
  }
  weaponNum = 132;
  goto tryagain;
 }

 if ( weaponNum == 132 || weaponNum == 136 || weaponNum == 137 ) {
  COM_StripExtension( item->world_model[0], path, sizeof(path) );
  Q_strcat( path, sizeof(path), "_barrel.md3" );
  pi->barrelModel = trap_R_RegisterModel( path );
 }

 COM_StripExtension( item->world_model[0], path, sizeof(path) );
 Q_strcat( path, sizeof(path), "_flash.md3" );
 pi->flashModel = trap_R_RegisterModel( path );

 switch( weaponNum ) {
 case 136:
  MAKERGB( pi->flashDlightColor, 0.6f, 0.6f, 1 );
  break;

 case 132:
  MAKERGB( pi->flashDlightColor, 1, 1, 0 );
  break;

 case 128:
  MAKERGB( pi->flashDlightColor, 1, 1, 0 );
  break;

 case 134:
  MAKERGB( pi->flashDlightColor, 1, 0.7f, 0.5f );
  break;

 case 129:
  MAKERGB( pi->flashDlightColor, 1, 0.75f, 0 );
  break;

 case 133:
  MAKERGB( pi->flashDlightColor, 0.6f, 0.6f, 1 );
  break;

 case 130:
  MAKERGB( pi->flashDlightColor, 1, 0.5f, 0 );
  break;

 case 131:
  MAKERGB( pi->flashDlightColor, 0.6f, 0.6f, 1 );
  break;

 case 137:
  MAKERGB( pi->flashDlightColor, 1, 0.7f, 1 );
  break;

 case 135:
  MAKERGB( pi->flashDlightColor, 0.6f, 0.6f, 1 );
  break;

 default:
  MAKERGB( pi->flashDlightColor, 1, 1, 1 );
  break;
 }
}
