
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCLIST ;
typedef int GSLList ;


 int int2ptr (int) ;
 int * list_create (int ) ;
 int * list_insert_prepend (int *,int ) ;
 int tclistnum (int *) ;
 scalar_t__ tclistval (int *,int,int*) ;

GSLList *
tclist_to_gsllist (TCLIST * tclist)
{
  GSLList *list = ((void*)0);
  int i, sz;
  int *val;

  for (i = 0; i < tclistnum (tclist); ++i) {
    val = (int *) tclistval (tclist, i, &sz);
    if (list == ((void*)0))
      list = list_create (int2ptr (*val));
    else
      list = list_insert_prepend (list, int2ptr (*val));
  }

  return list;
}
