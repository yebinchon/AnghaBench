
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int GModule ;


 int MTRC_DATAMAP ;
 void* get_hash (int ,int ) ;
 int ht_get_size (void*) ;

uint32_t
ht_get_size_datamap (GModule module)
{
  void *hash = get_hash (module, MTRC_DATAMAP);

  if (!hash)
    return 0;

  return ht_get_size (hash);
}
