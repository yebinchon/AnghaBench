
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * name; } ;


 int MAX_TYPE ;
 int type_free (TYPE_1__*) ;
 TYPE_1__* types ;

void free_types (void) {
  int i;
  for (i = 0; i < MAX_TYPE; i++) {
    if (types[i].name != ((void*)0)) {
      type_free (&types[i]);
    }
  }
}
