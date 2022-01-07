
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GModule ;


 int MTRC_ROOT ;
 int MTRC_ROOTMAP ;
 void* get_hash (int ,int ) ;
 int get_ii32 (void*,int) ;
 char* get_is32 (void*,int) ;

char *
ht_get_root (GModule module, int key)
{
  int root_key = 0;
  void *hashroot = get_hash (module, MTRC_ROOT);
  void *hashrootmap = get_hash (module, MTRC_ROOTMAP);

  if (!hashroot || !hashrootmap)
    return ((void*)0);


  if ((root_key = get_ii32 (hashroot, key)) == 0)
    return ((void*)0);

  return get_is32 (hashrootmap, root_key);
}
