
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int latestSnapshotNum; TYPE_1__* snap; } ;
struct TYPE_5__ {int serverCommandSequence; } ;
struct TYPE_4__ {int serverTime; } ;


 float BIGCHAR_HEIGHT ;
 int BIGCHAR_WIDTH ;
 int CG_DrawBigString (int,float,char*,float) ;
 int CG_DrawStrlen (char*) ;
 TYPE_3__ cg ;
 TYPE_2__ cgs ;
 char* va (char*,int ,int ,int ) ;

__attribute__((used)) static float CG_DrawSnapshot( float y ) {
 char *s;
 int w;

 s = va( "time:%i snap:%i cmd:%i", cg.snap->serverTime,
  cg.latestSnapshotNum, cgs.serverCommandSequence );
 w = CG_DrawStrlen( s ) * BIGCHAR_WIDTH;

 CG_DrawBigString( 635 - w, y + 2, s, 1.0F);

 return y + BIGCHAR_HEIGHT + 4;
}
