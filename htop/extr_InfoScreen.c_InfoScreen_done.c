
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lines; int inc; scalar_t__ display; } ;
typedef int Object ;
typedef TYPE_1__ InfoScreen ;


 int IncSet_delete (int ) ;
 int Panel_delete (int *) ;
 int Vector_delete (int ) ;

InfoScreen* InfoScreen_done(InfoScreen* this) {
   Panel_delete((Object*)this->display);
   IncSet_delete(this->inc);
   Vector_delete(this->lines);
   return this;
}
