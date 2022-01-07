
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long size; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* pmb_sizes ;

__attribute__((used)) static bool pmb_size_valid(unsigned long size)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(pmb_sizes); i++)
  if (pmb_sizes[i].size == size)
   return 1;

 return 0;
}
