
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int panels; } ;
typedef TYPE_1__ ScreenManager ;


 int Vector_delete (int ) ;
 int free (TYPE_1__*) ;

void ScreenManager_delete(ScreenManager* this) {
   Vector_delete(this->panels);
   free(this);
}
