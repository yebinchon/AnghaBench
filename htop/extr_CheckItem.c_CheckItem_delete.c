
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* text; } ;
typedef int Object ;
typedef TYPE_1__ CheckItem ;


 int assert (int ) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void CheckItem_delete(Object* cast) {
   CheckItem* this = (CheckItem*)cast;
   assert (this != ((void*)0));

   free(this->text);
   free(this);
}
