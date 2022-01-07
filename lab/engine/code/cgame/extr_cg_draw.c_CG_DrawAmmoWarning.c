
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lowAmmoWarning; } ;
struct TYPE_3__ {scalar_t__ integer; } ;


 int BIGCHAR_WIDTH ;
 int CG_DrawBigString (int,int,char const*,float) ;
 int CG_DrawStrlen (char const*) ;
 TYPE_2__ cg ;
 TYPE_1__ cg_drawAmmoWarning ;

__attribute__((used)) static void CG_DrawAmmoWarning( void ) {
 const char *s;
 int w;

 if ( cg_drawAmmoWarning.integer == 0 ) {
  return;
 }

 if ( !cg.lowAmmoWarning ) {
  return;
 }

 if ( cg.lowAmmoWarning == 2 ) {
  s = "OUT OF AMMO";
 } else {
  s = "LOW AMMO WARNING";
 }
 w = CG_DrawStrlen( s ) * BIGCHAR_WIDTH;
 CG_DrawBigString(320 - w / 2, 64, s, 1.0F);
}
