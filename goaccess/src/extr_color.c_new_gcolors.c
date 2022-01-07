
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int module; } ;
typedef TYPE_1__ GColors ;


 TYPE_1__* xcalloc (int,int) ;

__attribute__((used)) static GColors *
new_gcolors (void)
{
  GColors *color = xcalloc (1, sizeof (GColors));
  color->module = -1;

  return color;
}
