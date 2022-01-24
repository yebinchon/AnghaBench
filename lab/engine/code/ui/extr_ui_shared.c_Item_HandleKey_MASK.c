#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_10__ {int type; } ;
typedef  TYPE_1__ itemDef_t ;

/* Variables and functions */
#define  ITEM_TYPE_BIND 139 
#define  ITEM_TYPE_BUTTON 138 
#define  ITEM_TYPE_CHECKBOX 137 
#define  ITEM_TYPE_COMBO 136 
#define  ITEM_TYPE_EDITFIELD 135 
#define  ITEM_TYPE_LISTBOX 134 
#define  ITEM_TYPE_MULTI 133 
#define  ITEM_TYPE_NUMERICFIELD 132 
#define  ITEM_TYPE_OWNERDRAW 131 
#define  ITEM_TYPE_RADIOBUTTON 130 
#define  ITEM_TYPE_SLIDER 129 
#define  ITEM_TYPE_YESNO 128 
 scalar_t__ FUNC0 (TYPE_1__*,int,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int) ; 
 int K_MOUSE1 ; 
 int K_MOUSE2 ; 
 int K_MOUSE3 ; 
 int /*<<< orphan*/ * captureData ; 
 scalar_t__ captureFunc ; 
 int /*<<< orphan*/ * itemCapture ; 
 scalar_t__ qfalse ; 

qboolean FUNC8(itemDef_t *item, int key, qboolean down) {

	if (itemCapture) {
		FUNC6(itemCapture);
		itemCapture = NULL;
		captureFunc = 0;
		captureData = NULL;
	} else {
		if ( down && ( key == K_MOUSE1 || key == K_MOUSE2 || key == K_MOUSE3 ) ) {
			FUNC5(item, key);
		}
	}

	if (!down) {
		return qfalse;
	}

  switch (item->type) {
    case ITEM_TYPE_BUTTON:
      return qfalse;
      break;
    case ITEM_TYPE_RADIOBUTTON:
      return qfalse;
      break;
    case ITEM_TYPE_CHECKBOX:
      return qfalse;
      break;
    case ITEM_TYPE_EDITFIELD:
    case ITEM_TYPE_NUMERICFIELD:
      //return Item_TextField_HandleKey(item, key);
      return qfalse;
      break;
    case ITEM_TYPE_COMBO:
      return qfalse;
      break;
    case ITEM_TYPE_LISTBOX:
      return FUNC1(item, key, down, qfalse);
      break;
    case ITEM_TYPE_YESNO:
      return FUNC7(item, key);
      break;
    case ITEM_TYPE_MULTI:
      return FUNC2(item, key);
      break;
    case ITEM_TYPE_OWNERDRAW:
      return FUNC3(item, key);
      break;
    case ITEM_TYPE_BIND:
			return FUNC0(item, key, down);
      break;
    case ITEM_TYPE_SLIDER:
      return FUNC4(item, key, down);
      break;
    //case ITEM_TYPE_IMAGE:
    //  Item_Image_Paint(item);
    //  break;
    default:
      return qfalse;
      break;
  }

  //return qfalse;
}