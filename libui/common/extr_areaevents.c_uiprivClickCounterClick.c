
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int curButton; int count; int rectX0; int rectY0; int rectX1; int rectY1; uintptr_t prevTime; } ;
typedef TYPE_1__ uiprivClickCounter ;
typedef int int32_t ;



int uiprivClickCounterClick(uiprivClickCounter *c, int button, int x, int y, uintptr_t time, uintptr_t maxTime, int32_t xdist, int32_t ydist)
{

 if (button != c->curButton)
  c->count = 0;


 if (x < c->rectX0)
  c->count = 0;
 if (y < c->rectY0)
  c->count = 0;
 if (x >= c->rectX1)
  c->count = 0;
 if (y >= c->rectY1)
  c->count = 0;



 if ((time - c->prevTime) > maxTime)
  c->count = 0;

 c->count++;


 c->curButton = button;
 c->prevTime = time;
 c->rectX0 = x - xdist;
 c->rectY0 = y - ydist;
 c->rectX1 = x + xdist;
 c->rectY1 = y + ydist;

 return c->count;
}
