
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ total_alloc; } ;
typedef TYPE_1__ GDash ;


 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* xmalloc (int) ;

GDash *
new_gdash (void)
{
  GDash *dash = xmalloc (sizeof (GDash));
  memset (dash, 0, sizeof *dash);
  dash->total_alloc = 0;

  return dash;
}
