
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HOSTS ;
 int MTRC_AGENTS ;
 int free_agent_values ;
 void* get_hash (int ,int ) ;
 int tc_db_foreach (void*,int ,int *) ;

void
free_agent_list (void)
{
  void *hash = get_hash (HOSTS, MTRC_AGENTS);
  if (!hash)
    return;

  tc_db_foreach (hash, free_agent_values, ((void*)0));
}
