
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int caption; } ;
typedef TYPE_1__ Meter ;


 int free (int ) ;
 int xStrdup (char const*) ;

void Meter_setCaption(Meter* this, const char* caption) {
   free(this->caption);
   this->caption = xStrdup(caption);
}
