
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* get_is32 (void*,int) ;
 void* ht_agent_vals ;

char *
ht_get_host_agent_val (int key)
{
  void *hash = ht_agent_vals;

  if (!hash)
    return ((void*)0);

  return get_is32 (hash, key);
}
