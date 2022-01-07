
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int GModule ;


 int MTRC_MAXTS ;
 void* get_hash (int ,int ) ;
 int get_iu64 (void*,int) ;

uint64_t
ht_get_maxts (GModule module, int key)
{
  void *hash = get_hash (module, MTRC_MAXTS);

  if (!hash)
    return 0;

  return get_iu64 (hash, key);
}
