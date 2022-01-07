
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nitems; int nitems_max; char const** item; } ;
typedef TYPE_1__ string_list_ty ;


 int REALLOC_ARRAY (char const**,int) ;

__attribute__((used)) static inline void
string_list_append (string_list_ty *slp, const char *s)
{

  if (slp->nitems >= slp->nitems_max)
    {
      slp->nitems_max = slp->nitems_max * 2 + 4;
      REALLOC_ARRAY(slp->item, slp->nitems_max);
    }


  slp->item[slp->nitems++] = s;
}
