
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kwsmatch {size_t* offset; int * size; scalar_t__ index; } ;
struct kwset {int words; int mind; int * trans; } ;
typedef scalar_t__ kwset_t ;


 size_t bmexec (scalar_t__,char const*,size_t) ;
 size_t cwexec (scalar_t__,char const*,size_t,struct kwsmatch*) ;

size_t
kwsexec (kwset_t kws, char const *text, size_t size,
  struct kwsmatch *kwsmatch)
{
  struct kwset const *kwset = (struct kwset *) kws;
  if (kwset->words == 1 && kwset->trans == ((void*)0))
    {
      size_t ret = bmexec (kws, text, size);
      if (kwsmatch != ((void*)0) && ret != (size_t) -1)
 {
   kwsmatch->index = 0;
   kwsmatch->offset[0] = ret;
   kwsmatch->size[0] = kwset->mind;
 }
      return ret;
    }
  else
    return cwexec(kws, text, size, kwsmatch);
}
