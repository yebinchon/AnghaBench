
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCLIST ;
typedef int GModule ;


 int MTRC_AGENTS ;
 void* get_hash (int ,int ) ;
 int * get_itcli (void*,int) ;

TCLIST *
ht_get_host_agent_tclist (GModule module, int key)
{
  void *hash = get_hash (module, MTRC_AGENTS);
  TCLIST *list;

  if ((list = get_itcli (hash, key)))
    return list;
  return ((void*)0);
}
