
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nitems; int item; } ;
typedef TYPE_1__ string_list_ty ;


 int QSORT (int ,int ,int ) ;
 int cmp_string ;

__attribute__((used)) static inline void
string_list_sort (string_list_ty *slp)
{
  QSORT(slp->item, slp->nitems, cmp_string);
}
