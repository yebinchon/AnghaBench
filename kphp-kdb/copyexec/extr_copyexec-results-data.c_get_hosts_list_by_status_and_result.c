
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alpha_to_status (char const* const) ;
 char* get_hosts_list (unsigned long long,int,unsigned int,int) ;
 int vkprintf (int,char*,...) ;

char *get_hosts_list_by_status_and_result (unsigned long long volume_id, int transaction_id, const char *const status, unsigned result) {
  vkprintf (3, "get_hosts_list_by_status_and_result (volume_id:%llu, transaction_id: %d, status: %s, result:0x%x)\n", volume_id, transaction_id, status, result);
  int s = alpha_to_status (status);
  if (s < 0) {
    vkprintf (3, "get_hosts_list_by_status_and_result: unknown status \"%s\"\n", status);
    return ((void*)0);
  }
  return get_hosts_list (volume_id, transaction_id, (((unsigned) s) << 28) | result, 0xffffffffU);
}
