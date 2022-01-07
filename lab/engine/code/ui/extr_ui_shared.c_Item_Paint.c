
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_22__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int* vec4_t ;
struct TYPE_27__ {int h; int w; int y; int x; } ;
typedef TYPE_4__ rectDef_t ;
struct TYPE_28__ {int fadeCycle; int fadeClamp; int fadeAmount; } ;
typedef TYPE_5__ menuDef_t ;
struct TYPE_26__ {float x; float y; scalar_t__ w; scalar_t__ h; } ;
struct TYPE_25__ {int w; int h; float x; float y; } ;
struct TYPE_23__ {scalar_t__ x; scalar_t__ y; scalar_t__ w; scalar_t__ h; } ;
struct TYPE_30__ {int flags; scalar_t__ nextTime; scalar_t__ offsetTime; scalar_t__ ownerDrawFlags; TYPE_3__ rectEffects; TYPE_2__ rectClient; TYPE_1__ rectEffects2; } ;
struct TYPE_29__ {int cvarFlags; int type; TYPE_7__ window; scalar_t__ parent; } ;
typedef TYPE_6__ itemDef_t ;
struct TYPE_24__ {scalar_t__ realTime; int (* drawRect ) (int ,int ,int ,int ,int,int*) ;int (* ownerDrawVisible ) (scalar_t__) ;} ;


 int CVAR_HIDE ;
 int CVAR_SHOW ;
 TYPE_22__* DC ;
 int Item_Bind_Paint (TYPE_6__*) ;
 TYPE_4__* Item_CorrectedTextRect (TYPE_6__*) ;
 int Item_EnableShowViaCvar (TYPE_6__*,int) ;
 int Item_ListBox_Paint (TYPE_6__*) ;
 int Item_Model_Paint (TYPE_6__*) ;
 int Item_Multi_Paint (TYPE_6__*) ;
 int Item_OwnerDraw_Paint (TYPE_6__*) ;
 int Item_Slider_Paint (TYPE_6__*) ;
 int Item_TextField_Paint (TYPE_6__*) ;
 int Item_Text_Paint (TYPE_6__*) ;
 int Item_UpdatePosition (TYPE_6__*) ;
 int Item_YesNo_Paint (TYPE_6__*) ;
 int M_PI ;
 int WINDOW_INTRANSITION ;
 int WINDOW_ORBITING ;
 int WINDOW_TIMEDVISIBLE ;
 int WINDOW_VISIBLE ;
 int Window_Paint (TYPE_7__*,int ,int ,int ) ;
 float cos (float) ;
 scalar_t__ debugMode ;
 float sin (float) ;
 int stub1 (scalar_t__) ;
 int stub2 (int ,int ,int ,int ,int,int*) ;

void Item_Paint(itemDef_t *item) {
  vec4_t red;
  menuDef_t *parent;

  red[0] = red[3] = 1;
  red[1] = red[2] = 0;

  if (item == ((void*)0)) {
    return;
  }

  parent = (menuDef_t*)item->parent;

  if (item->window.flags & WINDOW_ORBITING) {
    if (DC->realTime > item->window.nextTime) {
      float rx, ry, a, c, s, w, h;

      item->window.nextTime = DC->realTime + item->window.offsetTime;

      w = item->window.rectClient.w / 2;
      h = item->window.rectClient.h / 2;
      rx = item->window.rectClient.x + w - item->window.rectEffects.x;
      ry = item->window.rectClient.y + h - item->window.rectEffects.y;
      a = 3 * M_PI / 180;
     c = cos(a);
      s = sin(a);
      item->window.rectClient.x = (rx * c - ry * s) + item->window.rectEffects.x - w;
      item->window.rectClient.y = (rx * s + ry * c) + item->window.rectEffects.y - h;
      Item_UpdatePosition(item);

    }
  }


  if (item->window.flags & WINDOW_INTRANSITION) {
    if (DC->realTime > item->window.nextTime) {
      int done = 0;
      item->window.nextTime = DC->realTime + item->window.offsetTime;

   if (item->window.rectClient.x == item->window.rectEffects.x) {
    done++;
   } else {
    if (item->window.rectClient.x < item->window.rectEffects.x) {
     item->window.rectClient.x += item->window.rectEffects2.x;
     if (item->window.rectClient.x > item->window.rectEffects.x) {
      item->window.rectClient.x = item->window.rectEffects.x;
      done++;
     }
    } else {
     item->window.rectClient.x -= item->window.rectEffects2.x;
     if (item->window.rectClient.x < item->window.rectEffects.x) {
      item->window.rectClient.x = item->window.rectEffects.x;
      done++;
     }
    }
   }
   if (item->window.rectClient.y == item->window.rectEffects.y) {
    done++;
   } else {
    if (item->window.rectClient.y < item->window.rectEffects.y) {
     item->window.rectClient.y += item->window.rectEffects2.y;
     if (item->window.rectClient.y > item->window.rectEffects.y) {
      item->window.rectClient.y = item->window.rectEffects.y;
      done++;
     }
    } else {
     item->window.rectClient.y -= item->window.rectEffects2.y;
     if (item->window.rectClient.y < item->window.rectEffects.y) {
      item->window.rectClient.y = item->window.rectEffects.y;
      done++;
     }
    }
   }
   if (item->window.rectClient.w == item->window.rectEffects.w) {
    done++;
   } else {
    if (item->window.rectClient.w < item->window.rectEffects.w) {
     item->window.rectClient.w += item->window.rectEffects2.w;
     if (item->window.rectClient.w > item->window.rectEffects.w) {
      item->window.rectClient.w = item->window.rectEffects.w;
      done++;
     }
    } else {
     item->window.rectClient.w -= item->window.rectEffects2.w;
     if (item->window.rectClient.w < item->window.rectEffects.w) {
      item->window.rectClient.w = item->window.rectEffects.w;
      done++;
     }
    }
   }
   if (item->window.rectClient.h == item->window.rectEffects.h) {
    done++;
   } else {
    if (item->window.rectClient.h < item->window.rectEffects.h) {
     item->window.rectClient.h += item->window.rectEffects2.h;
     if (item->window.rectClient.h > item->window.rectEffects.h) {
      item->window.rectClient.h = item->window.rectEffects.h;
      done++;
     }
    } else {
     item->window.rectClient.h -= item->window.rectEffects2.h;
     if (item->window.rectClient.h < item->window.rectEffects.h) {
      item->window.rectClient.h = item->window.rectEffects.h;
      done++;
     }
    }
   }

      Item_UpdatePosition(item);

      if (done == 4) {
        item->window.flags &= ~WINDOW_INTRANSITION;
      }

    }
  }

 if (item->window.ownerDrawFlags && DC->ownerDrawVisible) {
  if (!DC->ownerDrawVisible(item->window.ownerDrawFlags)) {
   item->window.flags &= ~WINDOW_VISIBLE;
  } else {
   item->window.flags |= WINDOW_VISIBLE;
  }
 }

 if (item->cvarFlags & (CVAR_SHOW | CVAR_HIDE)) {
  if (!Item_EnableShowViaCvar(item, CVAR_SHOW)) {
   return;
  }
 }

  if (item->window.flags & WINDOW_TIMEDVISIBLE) {

 }

  if (!(item->window.flags & WINDOW_VISIBLE)) {
    return;
  }


  Window_Paint(&item->window, parent->fadeAmount , parent->fadeClamp, parent->fadeCycle);

  if (debugMode) {
  vec4_t color;
  rectDef_t *r = Item_CorrectedTextRect(item);
    color[1] = color[3] = 1;
    color[0] = color[2] = 0;
    DC->drawRect(r->x, r->y, r->w, r->h, 1, color);
  }



  switch (item->type) {
    case 132:
      Item_OwnerDraw_Paint(item);
      break;
    case 129:
    case 140:
      Item_Text_Paint(item);
      break;
    case 131:
      break;
    case 139:
      break;
    case 137:
    case 133:
      Item_TextField_Paint(item);
      break;
    case 138:
      break;
    case 136:
      Item_ListBox_Paint(item);
      break;



    case 135:
      Item_Model_Paint(item);
      break;
    case 128:
      Item_YesNo_Paint(item);
      break;
    case 134:
      Item_Multi_Paint(item);
      break;
    case 141:
      Item_Bind_Paint(item);
      break;
    case 130:
      Item_Slider_Paint(item);
      break;
    default:
      break;
  }

}
