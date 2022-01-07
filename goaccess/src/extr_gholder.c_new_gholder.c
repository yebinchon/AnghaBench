
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int GHolder ;


 int memset (int *,int ,int) ;
 int * xmalloc (int) ;

GHolder *
new_gholder (uint32_t size)
{
  GHolder *holder = xmalloc (size * sizeof (GHolder));
  memset (holder, 0, size * sizeof *holder);

  return holder;
}
