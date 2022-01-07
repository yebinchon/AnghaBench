
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WSClient ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_1__ GSLList ;


 TYPE_1__* list_find (TYPE_1__*,int ,int*) ;
 int ws_find_client_sock_in_list ;

__attribute__((used)) static WSClient *
ws_get_client_from_list (int listener, GSLList ** colist)
{
  GSLList *match = ((void*)0);


  if (!(match = list_find (*colist, ws_find_client_sock_in_list, &listener)))
    return ((void*)0);
  return (WSClient *) match->data;
}
