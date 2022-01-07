
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int content; } ;
typedef TYPE_1__ my_struct ;



__attribute__((used)) static int compare_structs(const void *a, const void *b)
{
 return ((const my_struct *)a)->content -
  ((const my_struct *)b)->content;
}
