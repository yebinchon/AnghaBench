
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCLIST ;


 int * tcbdbget4 (void*,int*,int) ;

__attribute__((used)) static TCLIST *
get_itcli (void *hash, int key)
{
  TCLIST *list = ((void*)0);

  if (!hash)
    return ((void*)0);


  if ((list = tcbdbget4 (hash, &key, sizeof (int))) != ((void*)0))
    return list;

  return ((void*)0);
}
