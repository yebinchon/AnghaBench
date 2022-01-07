
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int idx; scalar_t__ sub_items_size; scalar_t__ holder_size; int * items; } ;
typedef size_t GModule ;
typedef TYPE_1__ GHolder ;


 int free (int *) ;
 int free_holder_data (int ) ;

void
free_holder_by_module (GHolder ** holder, GModule module)
{
  int j;

  if ((*holder) == ((void*)0))
    return;

  for (j = 0; j < (*holder)[module].idx; j++) {
    free_holder_data ((*holder)[module].items[j]);
  }
  free ((*holder)[module].items);

  (*holder)[module].holder_size = 0;
  (*holder)[module].idx = 0;
  (*holder)[module].sub_items_size = 0;
}
