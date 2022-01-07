
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GModule ;


 int MTRC_ROOT ;
 void* get_hash (int ,int ) ;
 int ins_ii32 (void*,int,int) ;

int
ht_insert_root (GModule module, int key, int value)
{
  void *hash = get_hash (module, MTRC_ROOT);

  if (!hash)
    return -1;

  return ins_ii32 (hash, key, value);
}
