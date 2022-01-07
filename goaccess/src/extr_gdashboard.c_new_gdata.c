
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int GDashData ;


 int * xcalloc (int ,int) ;

GDashData *
new_gdata (uint32_t size)
{
  GDashData *data = xcalloc (size, sizeof (GDashData));

  return data;
}
