
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; scalar_t__ moving; } ;
typedef int RichString ;
typedef int Object ;
typedef TYPE_1__ ListItem ;


 int * CRT_colors ;
 scalar_t__ CRT_utf8 ;
 size_t DEFAULT_COLOR ;
 int RichString_append (int *,int ,int ) ;
 int RichString_prune (int *) ;
 int RichString_write (int *,int ,char*) ;
 int assert (int ) ;

__attribute__((used)) static void ListItem_display(Object* cast, RichString* out) {
   ListItem* const this = (ListItem*)cast;
   assert (this != ((void*)0));





   if (this->moving) {
      RichString_write(out, CRT_colors[DEFAULT_COLOR],



            "+ ");
   } else {
      RichString_prune(out);
   }
   RichString_append(out, CRT_colors[DEFAULT_COLOR], this->value );
}
