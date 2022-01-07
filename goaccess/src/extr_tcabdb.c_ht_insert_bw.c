
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int GModule ;


 int MTRC_BW ;
 void* get_hash (int ,int ) ;
 int inc_iu64 (void*,int,int ) ;

int
ht_insert_bw (GModule module, int key, uint64_t inc)
{
  void *hash = get_hash (module, MTRC_BW);

  if (!hash)
    return -1;

  return inc_iu64 (hash, key, inc);
}
