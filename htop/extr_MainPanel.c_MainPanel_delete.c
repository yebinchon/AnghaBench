
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* keys; int inc; } ;
typedef int Panel ;
typedef int Object ;
typedef TYPE_1__ MainPanel ;


 int IncSet_delete (int ) ;
 int Panel_done (int *) ;
 int free (TYPE_1__*) ;

void MainPanel_delete(Object* object) {
   Panel* super = (Panel*) object;
   MainPanel* this = (MainPanel*) object;
   Panel_done(super);
   IncSet_delete(this->inc);
   free(this->keys);
   free(this);
}
