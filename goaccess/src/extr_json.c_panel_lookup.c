
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ module; } ;
typedef TYPE_1__ GPanel ;
typedef scalar_t__ GModule ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* paneling ;

__attribute__((used)) static GPanel *
panel_lookup (GModule module)
{
  int i, num_panels = ARRAY_SIZE (paneling);

  for (i = 0; i < num_panels; i++) {
    if (paneling[i].module == module)
      return &paneling[i];
  }
  return ((void*)0);
}
