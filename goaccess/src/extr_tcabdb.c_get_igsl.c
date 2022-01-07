
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GSLList ;


 int * tcadbget (void*,int*,int,int*) ;

__attribute__((used)) static GSLList *
get_igsl (void *hash, int key)
{
  int sp;
  GSLList *list = ((void*)0);

  if (!hash)
    return ((void*)0);


  if ((list = tcadbget (hash, &key, sizeof (int), &sp)) != ((void*)0))
    return list;

  return ((void*)0);
}
