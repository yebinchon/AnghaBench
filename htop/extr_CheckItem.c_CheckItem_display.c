
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* text; } ;
typedef int RichString ;
typedef int Object ;
typedef TYPE_1__ CheckItem ;


 size_t CHECK_BOX ;
 size_t CHECK_MARK ;
 size_t CHECK_TEXT ;
 int * CRT_colors ;
 scalar_t__ CheckItem_get (TYPE_1__*) ;
 int RichString_append (int *,int ,char*) ;
 int RichString_write (int *,int ,char*) ;
 int assert (int ) ;

__attribute__((used)) static void CheckItem_display(Object* cast, RichString* out) {
   CheckItem* this = (CheckItem*)cast;
   assert (this != ((void*)0));
   RichString_write(out, CRT_colors[CHECK_BOX], "[");
   if (CheckItem_get(this))
      RichString_append(out, CRT_colors[CHECK_MARK], "x");
   else
      RichString_append(out, CRT_colors[CHECK_MARK], " ");
   RichString_append(out, CRT_colors[CHECK_BOX], "] ");
   RichString_append(out, CRT_colors[CHECK_TEXT], this->text);
}
