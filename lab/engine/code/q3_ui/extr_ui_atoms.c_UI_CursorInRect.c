
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int cursorx; int cursory; } ;


 int qfalse ;
 int qtrue ;
 TYPE_1__ uis ;

qboolean UI_CursorInRect (int x, int y, int width, int height)
{
 if (uis.cursorx < x ||
  uis.cursory < y ||
  uis.cursorx > x+width ||
  uis.cursory > y+height)
  return qfalse;

 return qtrue;
}
