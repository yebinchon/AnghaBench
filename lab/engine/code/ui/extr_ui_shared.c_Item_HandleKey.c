
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_10__ {int type; } ;
typedef TYPE_1__ itemDef_t ;
 scalar_t__ Item_Bind_HandleKey (TYPE_1__*,int,scalar_t__) ;
 scalar_t__ Item_ListBox_HandleKey (TYPE_1__*,int,scalar_t__,scalar_t__) ;
 scalar_t__ Item_Multi_HandleKey (TYPE_1__*,int) ;
 scalar_t__ Item_OwnerDraw_HandleKey (TYPE_1__*,int) ;
 scalar_t__ Item_Slider_HandleKey (TYPE_1__*,int,scalar_t__) ;
 int Item_StartCapture (TYPE_1__*,int) ;
 int Item_StopCapture (int *) ;
 scalar_t__ Item_YesNo_HandleKey (TYPE_1__*,int) ;
 int K_MOUSE1 ;
 int K_MOUSE2 ;
 int K_MOUSE3 ;
 int * captureData ;
 scalar_t__ captureFunc ;
 int * itemCapture ;
 scalar_t__ qfalse ;

qboolean Item_HandleKey(itemDef_t *item, int key, qboolean down) {

 if (itemCapture) {
  Item_StopCapture(itemCapture);
  itemCapture = ((void*)0);
  captureFunc = 0;
  captureData = ((void*)0);
 } else {
  if ( down && ( key == K_MOUSE1 || key == K_MOUSE2 || key == K_MOUSE3 ) ) {
   Item_StartCapture(item, key);
  }
 }

 if (!down) {
  return qfalse;
 }

  switch (item->type) {
    case 138:
      return qfalse;
      break;
    case 130:
      return qfalse;
      break;
    case 137:
      return qfalse;
      break;
    case 135:
    case 132:

      return qfalse;
      break;
    case 136:
      return qfalse;
      break;
    case 134:
      return Item_ListBox_HandleKey(item, key, down, qfalse);
      break;
    case 128:
      return Item_YesNo_HandleKey(item, key);
      break;
    case 133:
      return Item_Multi_HandleKey(item, key);
      break;
    case 131:
      return Item_OwnerDraw_HandleKey(item, key);
      break;
    case 139:
   return Item_Bind_HandleKey(item, key, down);
      break;
    case 129:
      return Item_Slider_HandleKey(item, key, down);
      break;



    default:
      return qfalse;
      break;
  }


}
