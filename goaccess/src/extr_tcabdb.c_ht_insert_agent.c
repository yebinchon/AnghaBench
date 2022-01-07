
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GModule ;


 int MTRC_AGENTS ;
 void* get_hash (int ,int ) ;
 int ins_igsl (void*,int,int) ;

int
ht_insert_agent (GModule module, int key, int value)
{
  void *hash = get_hash (module, MTRC_AGENTS);

  if (!hash)
    return -1;

  return ins_igsl (hash, key, value);
}
