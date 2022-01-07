
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GModule ;


 int MTRC_HITS ;
 void* get_hash (int ,int ) ;
 int get_ii32 (void*,int) ;

int
ht_get_hits (GModule module, int key)
{
  void *hash = get_hash (module, MTRC_HITS);

  if (!hash)
    return -1;

  return get_ii32 (hash, key);
}
