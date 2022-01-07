
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int GModule ;


 int MTRC_METADATA ;
 void* get_hash (int ,int ) ;
 int inc_su64 (void*,char const*,int ) ;

int
ht_insert_meta_data (GModule module, const char *key, uint64_t value)
{
  void *hash = get_hash (module, MTRC_METADATA);

  if (!hash)
    return -1;

  return inc_su64 (hash, key, value);
}
