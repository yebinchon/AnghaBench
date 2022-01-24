#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int scrollH; int y; int x; int h; int w; int scrollV; int needsRedraw; int selected; int selectionColor; int selectedLen; int oldSelected; int /*<<< orphan*/  items; int /*<<< orphan*/  header; } ;
typedef  TYPE_1__ Panel ;
typedef  int /*<<< orphan*/  Object ;

/* Variables and functions */
 int* CRT_colors ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t PANEL_HEADER_FOCUS ; 
 size_t PANEL_HEADER_UNFOCUS ; 
 size_t PANEL_SELECTION_UNFOCUS ; 
 size_t RESET_COLOR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  item ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int,char,int) ; 
 int /*<<< orphan*/  new ; 
 int /*<<< orphan*/  old ; 

void FUNC14(Panel* this, bool focus) {
   FUNC10 (this != NULL);

   int size = FUNC9(this->items);
   int scrollH = this->scrollH;
   int y = this->y;
   int x = this->x;
   int h = this->h;

   int headerLen = FUNC7(this->header);
   if (headerLen > 0) {
      int attr = focus
               ? CRT_colors[PANEL_HEADER_FOCUS]
               : CRT_colors[PANEL_HEADER_UNFOCUS];
      FUNC11(attr);
      FUNC13(y, x, ' ', this->w);
      if (scrollH < headerLen) {
         FUNC5(this->header, y, x, scrollH,
            FUNC1(headerLen - scrollH, this->w));
      }
      FUNC11(CRT_colors[RESET_COLOR]);
      y++;
   }

   // ensure scroll area is on screen
   if (this->scrollV < 0) {
      this->scrollV = 0;
      this->needsRedraw = true;
   } else if (this->scrollV >= size) {
      this->scrollV = FUNC0(size - 1, 0);
      this->needsRedraw = true;
   }
   // ensure selection is on screen
   if (this->selected < this->scrollV) {
      this->scrollV = this->selected;
      this->needsRedraw = true;
   } else if (this->selected >= this->scrollV + h) {
      this->scrollV = this->selected - h + 1;
      this->needsRedraw = true;
   }

   int first = this->scrollV;
   int upTo = FUNC1(first + h, size);

   int selectionColor = focus
                 ? this->selectionColor
                 : CRT_colors[PANEL_SELECTION_UNFOCUS];

   if (this->needsRedraw) {
      int line = 0;
      for(int i = first; line < h && i < upTo; i++) {
         Object* itemObj = FUNC8(this->items, i);
         FUNC10(itemObj); if(!itemObj) continue;
         FUNC3(item);
         FUNC2(itemObj, &item);
         int itemLen = FUNC7(item);
         int amt = FUNC1(itemLen - scrollH, this->w);
         bool selected = (i == this->selected);
         if (selected) {
            FUNC11(selectionColor);
            FUNC6(&item, selectionColor);
            this->selectedLen = itemLen;
         }
         FUNC13(y + line, x, ' ', this->w);
         if (amt > 0)
            FUNC5(item, y + line, x, scrollH, amt);
         if (selected)
            FUNC11(CRT_colors[RESET_COLOR]);
         FUNC4(item);
         line++;
      }
      while (line < h) {
         FUNC13(y + line, x, ' ', this->w);
         line++;
      }
      this->needsRedraw = false;

   } else {
      Object* oldObj = FUNC8(this->items, this->oldSelected);
      FUNC10(oldObj);
      FUNC3(old);
      FUNC2(oldObj, &old);
      int oldLen = FUNC7(old);
      Object* newObj = FUNC8(this->items, this->selected);
      FUNC3(new);
      FUNC2(newObj, &new);
      int newLen = FUNC7(new);
      this->selectedLen = newLen;
      FUNC13(y+ this->oldSelected - first, x+0, ' ', this->w);
      if (scrollH < oldLen)
         FUNC5(old, y+this->oldSelected - first, x,
            scrollH, FUNC1(oldLen - scrollH, this->w));
      FUNC11(selectionColor);
      FUNC13(y+this->selected - first, x+0, ' ', this->w);
      FUNC6(&new, selectionColor);
      if (scrollH < newLen)
         FUNC5(new, y+this->selected - first, x,
            scrollH, FUNC1(newLen - scrollH, this->w));
      FUNC11(CRT_colors[RESET_COLOR]);
      FUNC4(new);
      FUNC4(old);
   }
   this->oldSelected = this->selected;
   FUNC12(0, 0);
}