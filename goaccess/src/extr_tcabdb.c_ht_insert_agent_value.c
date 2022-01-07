
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ht_agent_vals ;
 int ins_is32 (void*,int,char const*) ;

int
ht_insert_agent_value (int key, const char *value)
{
  void *hash = ht_agent_vals;

  if (!hash)
    return -1;

  return ins_is32 (hash, key, value);
}
