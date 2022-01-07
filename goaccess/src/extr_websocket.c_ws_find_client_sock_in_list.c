
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int listener; } ;
typedef TYPE_1__ WSClient ;



__attribute__((used)) static int
ws_find_client_sock_in_list (void *data, void *needle)
{
  WSClient *client = data;

  return client->listener == (*(int *) needle);
}
