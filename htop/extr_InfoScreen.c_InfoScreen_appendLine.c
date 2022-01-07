
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int display; int inc; int lines; } ;
typedef int Object ;
typedef int ListItem ;
typedef TYPE_1__ InfoScreen ;


 char* IncSet_filter (int ) ;
 int ListItem_append (int *,char const*) ;
 int Panel_add (int ,int *) ;
 int * Panel_get (int ,scalar_t__) ;
 scalar_t__ Panel_size (int ) ;
 scalar_t__ String_contains_i (char const*,char const*) ;
 scalar_t__ Vector_get (int ,scalar_t__) ;
 scalar_t__ Vector_size (int ) ;

void InfoScreen_appendLine(InfoScreen* this, const char* line) {
   ListItem* last = (ListItem*)Vector_get(this->lines, Vector_size(this->lines)-1);
   ListItem_append(last, line);
   const char* incFilter = IncSet_filter(this->inc);
   if (incFilter && Panel_get(this->display, Panel_size(this->display)-1) != (Object*)last && String_contains_i(line, incFilter))
      Panel_add(this->display, (Object*)last);
}
