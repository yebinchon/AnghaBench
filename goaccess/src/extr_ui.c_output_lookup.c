
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ module; } ;
typedef TYPE_1__ GOutput ;
typedef scalar_t__ GModule ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* outputting ;

GOutput *
output_lookup (GModule module)
{
  int i, num_panels = ARRAY_SIZE (outputting);

  for (i = 0; i < num_panels; i++) {
    if (outputting[i].module == module)
      return &outputting[i];
  }
  return ((void*)0);
}
