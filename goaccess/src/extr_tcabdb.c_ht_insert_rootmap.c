
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GModule ;


 int MTRC_ROOTMAP ;
 void* get_hash (int ,int ) ;
 int ins_is32 (void*,int,char const*) ;

int
ht_insert_rootmap (GModule module, int key, const char *value)
{
  void *hash = get_hash (module, MTRC_ROOTMAP);

  if (!hash)
    return -1;

  return ins_is32 (hash, key, value);
}
