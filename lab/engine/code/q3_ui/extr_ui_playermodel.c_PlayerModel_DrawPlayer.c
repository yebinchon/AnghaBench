
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ y; int x; } ;
struct TYPE_6__ {int height; int width; TYPE_1__ generic; } ;
typedef TYPE_2__ menubitmap_s ;
struct TYPE_8__ {int playerinfo; } ;
struct TYPE_7__ {int realtime; } ;


 scalar_t__ LOW_MEMORY ;
 int UI_DrawPlayer (int ,scalar_t__,int ,int,int *,int) ;
 int UI_DrawProportionalString (int ,scalar_t__,char*,int ,int ) ;
 int UI_LEFT ;
 int color_blue ;
 TYPE_4__ s_playermodel ;
 scalar_t__ trap_MemoryRemaining () ;
 TYPE_3__ uis ;

__attribute__((used)) static void PlayerModel_DrawPlayer( void *self )
{
 menubitmap_s* b;

 b = (menubitmap_s*) self;

 if( trap_MemoryRemaining() <= LOW_MEMORY ) {
  UI_DrawProportionalString( b->generic.x, b->generic.y + b->height / 2, "LOW MEMORY", UI_LEFT, color_blue );
  return;
 }

 UI_DrawPlayer( b->generic.x, b->generic.y, b->width, b->height, &s_playermodel.playerinfo, uis.realtime/2 );
}
