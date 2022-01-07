
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GModule ;


 int MTRC_HITS ;
 void* get_hash (int ,int ) ;
 int get_ii32_min_max (void*,int*,int*) ;

void
ht_get_hits_min_max (GModule module, int *min, int *max)
{
  void *hash = get_hash (module, MTRC_HITS);

  if (!hash)
    return;

  get_ii32_min_max (hash, min, max);
}
