
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ module; } ;
typedef scalar_t__ GModule ;
typedef TYPE_1__ GHTML ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* htmldef ;

__attribute__((used)) static GHTML *
panel_lookup (GModule module)
{
  int i, num_panels = ARRAY_SIZE (htmldef);

  for (i = 0; i < num_panels; i++) {
    if (htmldef[i].module == module)
      return &htmldef[i];
  }
  return ((void*)0);
}
