
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int GModule ;


 int MTRC_METADATA ;
 void* get_hash (int ,int ) ;
 int get_su64 (void*,char const*) ;

uint64_t
ht_get_meta_data (GModule module, const char *key)
{
  void *hash = get_hash (module, MTRC_METADATA);
  if (!hash)
    return 0;

  return get_su64 (hash, key);
}
