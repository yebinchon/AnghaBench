
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; int h; int needsRedraw; int header; } ;
typedef TYPE_1__ Panel ;


 scalar_t__ RichString_sizeVal (int ) ;
 int assert (int ) ;

void Panel_resize(Panel* this, int w, int h) {
   assert (this != ((void*)0));

   if (RichString_sizeVal(this->header) > 0)
      h--;
   this->w = w;
   this->h = h;
   this->needsRedraw = 1;
}
