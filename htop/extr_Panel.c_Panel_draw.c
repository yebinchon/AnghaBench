
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int scrollH; int y; int x; int h; int w; int scrollV; int needsRedraw; int selected; int selectionColor; int selectedLen; int oldSelected; int items; int header; } ;
typedef TYPE_1__ Panel ;
typedef int Object ;


 int* CRT_colors ;
 int MAX (int,int ) ;
 int MIN (int,int) ;
 int Object_display (int *,int *) ;
 size_t PANEL_HEADER_FOCUS ;
 size_t PANEL_HEADER_UNFOCUS ;
 size_t PANEL_SELECTION_UNFOCUS ;
 size_t RESET_COLOR ;
 int RichString_begin (int ) ;
 int RichString_end (int ) ;
 int RichString_printoffnVal (int ,int,int,int,int) ;
 int RichString_setAttr (int *,int) ;
 int RichString_sizeVal (int ) ;
 int * Vector_get (int ,int) ;
 int Vector_size (int ) ;
 int assert (int *) ;
 int attrset (int) ;
 int item ;
 int move (int ,int ) ;
 int mvhline (int,int,char,int) ;
 int new ;
 int old ;

void Panel_draw(Panel* this, bool focus) {
   assert (this != ((void*)0));

   int size = Vector_size(this->items);
   int scrollH = this->scrollH;
   int y = this->y;
   int x = this->x;
   int h = this->h;

   int headerLen = RichString_sizeVal(this->header);
   if (headerLen > 0) {
      int attr = focus
               ? CRT_colors[PANEL_HEADER_FOCUS]
               : CRT_colors[PANEL_HEADER_UNFOCUS];
      attrset(attr);
      mvhline(y, x, ' ', this->w);
      if (scrollH < headerLen) {
         RichString_printoffnVal(this->header, y, x, scrollH,
            MIN(headerLen - scrollH, this->w));
      }
      attrset(CRT_colors[RESET_COLOR]);
      y++;
   }


   if (this->scrollV < 0) {
      this->scrollV = 0;
      this->needsRedraw = 1;
   } else if (this->scrollV >= size) {
      this->scrollV = MAX(size - 1, 0);
      this->needsRedraw = 1;
   }

   if (this->selected < this->scrollV) {
      this->scrollV = this->selected;
      this->needsRedraw = 1;
   } else if (this->selected >= this->scrollV + h) {
      this->scrollV = this->selected - h + 1;
      this->needsRedraw = 1;
   }

   int first = this->scrollV;
   int upTo = MIN(first + h, size);

   int selectionColor = focus
                 ? this->selectionColor
                 : CRT_colors[PANEL_SELECTION_UNFOCUS];

   if (this->needsRedraw) {
      int line = 0;
      for(int i = first; line < h && i < upTo; i++) {
         Object* itemObj = Vector_get(this->items, i);
         assert(itemObj); if(!itemObj) continue;
         RichString_begin(item);
         Object_display(itemObj, &item);
         int itemLen = RichString_sizeVal(item);
         int amt = MIN(itemLen - scrollH, this->w);
         bool selected = (i == this->selected);
         if (selected) {
            attrset(selectionColor);
            RichString_setAttr(&item, selectionColor);
            this->selectedLen = itemLen;
         }
         mvhline(y + line, x, ' ', this->w);
         if (amt > 0)
            RichString_printoffnVal(item, y + line, x, scrollH, amt);
         if (selected)
            attrset(CRT_colors[RESET_COLOR]);
         RichString_end(item);
         line++;
      }
      while (line < h) {
         mvhline(y + line, x, ' ', this->w);
         line++;
      }
      this->needsRedraw = 0;

   } else {
      Object* oldObj = Vector_get(this->items, this->oldSelected);
      assert(oldObj);
      RichString_begin(old);
      Object_display(oldObj, &old);
      int oldLen = RichString_sizeVal(old);
      Object* newObj = Vector_get(this->items, this->selected);
      RichString_begin(new);
      Object_display(newObj, &new);
      int newLen = RichString_sizeVal(new);
      this->selectedLen = newLen;
      mvhline(y+ this->oldSelected - first, x+0, ' ', this->w);
      if (scrollH < oldLen)
         RichString_printoffnVal(old, y+this->oldSelected - first, x,
            scrollH, MIN(oldLen - scrollH, this->w));
      attrset(selectionColor);
      mvhline(y+this->selected - first, x+0, ' ', this->w);
      RichString_setAttr(&new, selectionColor);
      if (scrollH < newLen)
         RichString_printoffnVal(new, y+this->selected - first, x,
            scrollH, MIN(newLen - scrollH, this->w));
      attrset(CRT_colors[RESET_COLOR]);
      RichString_end(new);
      RichString_end(old);
   }
   this->oldSelected = this->selected;
   move(0, 0);
}
