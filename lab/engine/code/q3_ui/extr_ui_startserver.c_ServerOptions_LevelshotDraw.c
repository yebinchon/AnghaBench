
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; int y; } ;
struct TYPE_6__ {int height; int width; TYPE_1__ generic; } ;
typedef TYPE_2__ menubitmap_s ;
struct TYPE_7__ {size_t newBotIndex; size_t gametype; int mapnamebuffer; scalar_t__ newBot; int newBotName; int * playerNameBuffers; } ;


 int Bitmap_Draw (TYPE_2__*) ;
 int Q_strncpyz (int ,int ,int) ;
 scalar_t__ SMALLCHAR_HEIGHT ;
 int UI_CENTER ;
 int UI_DrawString (int,int,int ,int,int ) ;
 int UI_FillRect (int,int,int,int,int ) ;
 int UI_SMALLFONT ;
 int colorBlack ;
 int color_blue ;
 int * gametype_items ;
 size_t* gametype_remap2 ;
 scalar_t__ qfalse ;
 TYPE_3__ s_serveroptions ;

__attribute__((used)) static void ServerOptions_LevelshotDraw( void *self ) {
 menubitmap_s *b;
 int x;
 int y;


 if( s_serveroptions.newBot ) {
  Q_strncpyz( s_serveroptions.playerNameBuffers[s_serveroptions.newBotIndex], s_serveroptions.newBotName, 16 );
  s_serveroptions.newBot = qfalse;
 }

 b = (menubitmap_s *)self;

 Bitmap_Draw( b );

 x = b->generic.x;
 y = b->generic.y + b->height;
 UI_FillRect( x, y, b->width, 40, colorBlack );

 x += b->width / 2;
 y += 4;
 UI_DrawString( x, y, s_serveroptions.mapnamebuffer, UI_CENTER|UI_SMALLFONT, color_blue );

 y += SMALLCHAR_HEIGHT;
 UI_DrawString( x, y, gametype_items[gametype_remap2[s_serveroptions.gametype]], UI_CENTER|UI_SMALLFONT, color_blue );
}
