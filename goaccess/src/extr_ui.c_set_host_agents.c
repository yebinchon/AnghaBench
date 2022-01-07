
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void GSLList ;


 int HOSTS ;
 int free (void*) ;
 void* ht_get_host_agent_list (int ,int) ;
 int ht_get_keymap (int ,char const*) ;
 int list_count (void*) ;

int
set_host_agents (const char *addr, void (*func) (void *, void *, int),
                 void *arr)
{
  GSLList *list;
  int data_nkey, count = 0;

  data_nkey = ht_get_keymap (HOSTS, addr);
  if (data_nkey == 0)
    return 1;

  list = ht_get_host_agent_list (HOSTS, data_nkey);
  if (!list)
    return 1;

  if ((count = list_count (list)) == 0) {
    free (list);
    return 1;
  }

  func (list, arr, count);





  return 0;
}
