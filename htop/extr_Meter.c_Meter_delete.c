
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* values; struct TYPE_5__* caption; struct TYPE_5__* drawData; } ;
typedef int Object ;
typedef TYPE_1__ Meter ;


 int Meter_done (TYPE_1__*) ;
 scalar_t__ Meter_doneFn (TYPE_1__*) ;
 int free (TYPE_1__*) ;

void Meter_delete(Object* cast) {
   if (!cast)
      return;
   Meter* this = (Meter*) cast;
   if (Meter_doneFn(this)) {
      Meter_done(this);
   }
   free(this->drawData);
   free(this->caption);
   free(this->values);
   free(this);
}
