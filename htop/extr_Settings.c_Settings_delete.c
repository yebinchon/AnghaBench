
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* columns; struct TYPE_6__* fields; struct TYPE_6__* filename; } ;
struct TYPE_5__ {TYPE_2__* modes; int names; } ;
typedef TYPE_2__ Settings ;
typedef int MeterColumnSettings ;


 int String_freeArray (int ) ;
 int free (TYPE_2__*) ;

void Settings_delete(Settings* this) {
   free(this->filename);
   free(this->fields);
   for (unsigned int i = 0; i < (sizeof(this->columns)/sizeof(MeterColumnSettings)); i++) {
      String_freeArray(this->columns[i].names);
      free(this->columns[i].modes);
   }
   free(this);
}
