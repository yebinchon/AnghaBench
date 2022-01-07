
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kwset {int obstack; } ;
typedef scalar_t__ kwset_t ;


 int free (scalar_t__) ;
 int obstack_free (int *,int *) ;

void
kwsfree (kwset_t kws)
{
  struct kwset *kwset;

  kwset = (struct kwset *) kws;
  obstack_free(&kwset->obstack, ((void*)0));
  free(kws);
}
