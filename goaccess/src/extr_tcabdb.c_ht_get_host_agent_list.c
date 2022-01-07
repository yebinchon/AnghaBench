
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GSLList ;
typedef int GModule ;


 int MTRC_AGENTS ;
 void* get_hash (int ,int ) ;
 int * get_igsl (void*,int) ;

GSLList *
ht_get_host_agent_list (GModule module, int key)
{
  void *hash = get_hash (module, MTRC_AGENTS);
  GSLList *list;

  if ((list = get_igsl (hash, key)))
    return list;
  return ((void*)0);
}
