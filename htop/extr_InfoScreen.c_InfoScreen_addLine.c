
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lines; int display; int inc; } ;
typedef int Object ;
typedef TYPE_1__ InfoScreen ;


 char* IncSet_filter (int ) ;
 scalar_t__ ListItem_new (char const*,int ) ;
 int Panel_add (int ,int *) ;
 scalar_t__ String_contains_i (char const*,char const*) ;
 int Vector_add (int ,int *) ;
 scalar_t__ Vector_get (int ,scalar_t__) ;
 scalar_t__ Vector_size (int ) ;

void InfoScreen_addLine(InfoScreen* this, const char* line) {
   Vector_add(this->lines, (Object*) ListItem_new(line, 0));
   const char* incFilter = IncSet_filter(this->inc);
   if (!incFilter || String_contains_i(line, incFilter))
      Panel_add(this->display, (Object*)Vector_get(this->lines, Vector_size(this->lines)-1));
}
