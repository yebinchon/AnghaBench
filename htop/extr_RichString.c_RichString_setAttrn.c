
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int chtype ;
struct TYPE_3__ {int* chptr; scalar_t__ chlen; } ;
typedef TYPE_1__ RichString ;


 int CLAMP (int,int ,scalar_t__) ;

void RichString_setAttrn(RichString* this, int attrs, int start, int finish) {
   chtype* ch = this->chptr + start;
   finish = CLAMP(finish, 0, this->chlen - 1);
   for (int i = start; i <= finish; i++) {
      *ch = (*ch & 0xff) | attrs;
      ch++;
   }
}
