
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int GModule ;


 int MTRC_CUMTS ;
 void* get_hash (int ,int ) ;
 int get_iu64_min_max (void*,int *,int *) ;

void
ht_get_cumts_min_max (GModule module, uint64_t * min, uint64_t * max)
{
  void *hash = get_hash (module, MTRC_CUMTS);

  if (!hash)
    return;

  get_iu64_min_max (hash, min, max);
}
