
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {int cursorx; int cursory; } ;
struct TYPE_4__ {TYPE_1__ uiDC; } ;


 int qfalse ;
 int qtrue ;
 TYPE_2__ uiInfo ;

qboolean UI_CursorInRect (int x, int y, int width, int height)
{
 if (uiInfo.uiDC.cursorx < x ||
  uiInfo.uiDC.cursory < y ||
  uiInfo.uiDC.cursorx > x+width ||
  uiInfo.uiDC.cursory > y+height)
  return qfalse;

 return qtrue;
}
