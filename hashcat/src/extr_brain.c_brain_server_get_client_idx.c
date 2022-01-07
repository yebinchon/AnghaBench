
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* client_slots; } ;
typedef TYPE_1__ brain_server_dbs_t ;


 int BRAIN_SERVER_CLIENTS_MAX ;

int brain_server_get_client_idx (brain_server_dbs_t *brain_server_dbs)
{
  for (int i = 1; i < BRAIN_SERVER_CLIENTS_MAX; i++)
  {
    if (brain_server_dbs->client_slots[i] == 0)
    {
      brain_server_dbs->client_slots[i] = 1;

      return i;
    }
  }

  return -1;
}
